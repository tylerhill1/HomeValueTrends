-- EXERCISE CAN BE FOUND HERE:
-- https://discuss.codecademy.com/t/data-science-independent-project-4-home-value-trends/419948

--Exploring the dataset

/* How many distinct zip codes are in this dataset? */

-- SELECT COUNT ( DISTINCT zip_code) 
-- FROM homes;

/* How many zip codes are from each state? */

-- SELECT state, COUNT (DISTINCT zip_code) AS zips
-- FROM homes
-- GROUP BY state;

/* What range of years are represented in the data? 

ANSWER: 1996-2018

*/

-- SELECT DISTINCT substr(date, 1, 4)
-- FROM homes

/* Using the most recent month of data available, 
what is the range of estimated home values across the nation? 

ANSWER:  $21600 - $17757800

*/

-- SELECT MIN(value)
-- FROM homes
-- WHERE substr(date, 1, 4) = '2018'
-- AND substr(date, 6, 2) = '11';

-- SELECT MAX(value)
-- FROM homes
-- WHERE substr(date, 1, 4) = '2018'
-- AND substr(date, 6, 2) = '11';

-- Analyzing the dataset

/* 

Using the most recent month of data available, 
which states have the highest average home values? 
DC, CA, HI, MA, CO

How about the lowest?
OK, MS, WV, AR, IN

*/

--Step 1: See the averages by state

-- SELECT state, ROUND(AVG(value), 2) as average_value
-- FROM homes
-- WHERE substr(date, 1, 4) = '2018'
-- AND substr(date, 6, 2) = '11'
-- GROUP BY state;

--Step 2: Sort Descending, Limit 5 to find highest states

-- SELECT state, ROUND(AVG(value), 2) as average_value
-- FROM homes
-- WHERE substr(date, 1, 4) = '2018'
-- AND substr(date, 6, 2) = '11'
-- GROUP BY state
-- ORDER BY average_value DESC
-- LIMIT 5;

--Step 3: Sort Ascending, Limit 5 to find lowest states

-- SELECT state, ROUND(AVG(value), 2) as average_value
-- FROM homes
-- WHERE substr(date, 1, 4) = '2018'
-- AND substr(date, 6, 2) = '11'
-- GROUP BY state
-- ORDER BY average_value
-- LIMIT 5;

/* 

Which states have the highest average home values for the year of 2017?
DC, CA, HI, MA, CO

Which states have the lowest average home values for the year of 2017?
OK, MS, WV, IN, AR

*/

-- SELECT state, ROUND(AVG(value), 2) as average_value
-- FROM homes
-- WHERE substr(date, 1, 4) = '2017'
-- GROUP BY state
-- ORDER BY average_value DESC
-- LIMIT 5;

-- SELECT state, ROUND(AVG(value), 2) as average_value
-- FROM homes
-- WHERE substr(date, 1, 4) = '2017'
-- GROUP BY state
-- ORDER BY average_value
-- LIMIT 5;

/* 

Which states have the highest average home values for the year of 2007?
HI, DC, CA, NJ, MA

Which states have the lowest average home values for the year of 2007?
OK, WV, TN, AR, IN

*/

-- SELECT state, ROUND(AVG(value), 2) as average_value
-- FROM homes
-- WHERE substr(date, 1, 4) = '2007'
-- GROUP BY state
-- ORDER BY average_value DESC
-- LIMIT 5;

-- SELECT state, ROUND(AVG(value), 2) as average_value
-- FROM homes
-- WHERE substr(date, 1, 4) = '2007'
-- GROUP BY state
-- ORDER BY average_value
-- LIMIT 5;

/* 

Which states have the highest average home values for the year of 1997?
HI, CA, DC, NJ, MA
Which states have the lowest average home values for the year of 1997?
OK, SD, TN, LA, WV

*/

-- SELECT state, ROUND(AVG(value), 2) as average_value
-- FROM homes
-- WHERE substr(date, 1, 4) = '1997'
-- GROUP BY state
-- ORDER BY average_value DESC
-- LIMIT 5;

-- SELECT state, ROUND(AVG(value), 2) as average_value
-- FROM homes
-- WHERE substr(date, 1, 4) = '1997' AND value IS NOT NULL
-- GROUP BY state
-- ORDER BY average_value
-- LIMIT 5;
