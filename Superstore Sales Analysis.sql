
SELECT TOP 10 *
FROM superstore_sales;

SELECT COUNT(*) AS total_rows
FROM superstore_sales;

--Check Basic Business Metrics:-
--The overall performance of the store.
SELECT 
		SUM(sales) AS total_sales,
		SUM(profit) AS total_profit,
		AVG(profit_margin) AS avg_profit_margin
FROM superstore_sales;


--Category-Level Profitability:-
SELECT category,
		SUM(sales) AS total_sales,
		SUM(profit) AS total_profit
FROM superstore_sales
GROUP BY category
ORDER BY total_profit;

--Identify Loss-Making Sub-Categories:-
SELECT sub_category,
		SUM(profit) AS total_profit
FROM superstore_sales
GROUP BY sub_category
ORDER BY total_profit ASC;

--Analyze Discount Impact:-
SELECT discount_level_category,
		SUM(sales) AS total_sales,
		SUM(profit) AS total_profit
FROM superstore_sales
GROUP BY discount_level_category;

--Region Performance:-
SELECT region,
		SUM(sales) AS total_sales,
		SUM(profit) AS total_profit
FROM superstore_sales
GROUP BY region
ORDER BY total_profit DESC;

--Top 10 Most Profitable Products:-
SELECT TOP 10 category,sub_category,product_name,
		SUM(profit) AS total_profit
FROM superstore_sales
GROUP BY category,sub_category,product_name
ORDER BY total_profit DESC;

--Bottom 5 Most losses product:-
SELECT TOP 5 category,sub_category,product_name,
		SUM(profit) AS total_profit
FROM superstore_sales
GROUP BY category,sub_category,product_name
ORDER BY total_profit ASC;


--Segment Performance:-
SELECT segment,
		SUM(sales) AS total_sales,
		SUM(profit) AS total_profit
FROM superstore_sales
GROUP BY segment
ORDER BY total_profit DESC;

--Time Analysis:-
SELECT year, month_name,
		SUM(sales) AS total_sales
FROM superstore_sales
GROUP BY year, month_name
ORDER BY year;

--Profit Margin Insights Category wise:-
SELECT
    category,
    AVG(profit_margin)*100 AS avg_margin
FROM superstore_sales
GROUP BY category
ORDER BY avg_margin DESC;

--
