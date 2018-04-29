

---Table 1: 
---Minnesota Regional Weather


--Create empty table to store regional weather information
CREATE TABLE weather_mn(
	
    date date, 
    Max_Temp double precision,
    Min_Temp double precision,
    Precip double precision, 
    Snow double precision, 
    Snow_Depth double precision
)

--Command line arguments to copy the raw .csv file into the new weather_mn table
C:\Program Files\PostgreSQL\9.6\bin>psql -h gis5777.csaba3m4f8xj.us-east-1.rds.amazonaws.com -d wethi002 -U wethi002 -c "\copy weather_mn from 'C:\Users\wethi002\Desktop\Spring_2018\Spatial_Databases\Final Project\Tables\w1_csv.csv' WITH CSV HEADER;


---Table 2: 
---Moose Information Table

--Create empty table to store pertinent locational and movement data of study moose 
CREATE TABLE MOOSE (

	NO double precision,
	CollarID integer,
	UTC_Date date,
	UTC_Time time,
	Latitude double precision,
	Longitude double precision,
	Elevation double precision,
	UTMZone varchar,
	Easting integer,
	Northing integer,
	Steplength double precision,
	Steptime double precision,
	Stepvelocity double precision
)

--Command line arguments to copy the raw .csv file into the new moose locations table
C:\Program Files\PostgreSQL\9.6\bin>psql -h gis5777.csaba3m4f8xj.us-east-1.rds.amazonaws.com -d wethi002 -U wethi002 -c "\copy Moose from 'C:\Users\wethi002\Desktop\Spring_2018\Spatial_Databases\Final Project\Tables\Moose.csv' WITH CSV HEADER;



---Table 3: 
---Moosies Table

--Create a new table to hold all core study information after we take use postgis/PostgreSQL to merge location & environmental data

CREATE TABLE MOOSIES(

    AID integer,
    date date,
    time time,
    moose_geom geometry,
    elevation double precision,
    max_temp double precision,
    min_temp double precision,
    precip double precision,
    snow double precision,
    snow_depth double precision,
    land_cover_value double precision,
    dem_elevation double precision
    )

---Table 4:
---Land Cover Table

CREATE TABLE Land_Cover_Table(

	Cover_Type_Number interger,
	Cover_Type_Name text,
	Description text

)