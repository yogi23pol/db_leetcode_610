# NOTE :- In this context, it's important to note that the table names used in the examples include underscores and numbers, 
# which differ from the naming conventions used in the LeetCode problem.

Create table If Not Exists Triangle_14
(
x int, 
y int, 
z int
);

Truncate table Triangle_14;
insert into Triangle_14 (x, y, z) values ('13', '15', '30');
insert into Triangle_14 (x, y, z) values ('10', '20', '15');

/*
Q. Write an SQL query to report for every three line segments whether they can form a triangle.
Return the result table in any order.

Input: 
Triangle table:
+----+----+----+
| x  | y  | z  |
+----+----+----+
| 13 | 15 | 30 |
| 10 | 20 | 15 |
+----+----+----+
Output: 
+----+----+----+----------+
| x  | y  | z  | triangle |
+----+----+----+----------+
| 13 | 15 | 30 | No       |
| 10 | 20 | 15 | Yes      |
+----+----+----+----------+

*/
SELECT * FROM Triangle_14;

# TYPE 1 :- IF CONDITION
SELECT *, 
IF(y+z>x AND x+z>y AND x+y>z , 'Yes','No') AS triangle
FROM Triangle_14;

# TYPE 2 :- CASE 
SELECT *, 
CASE 
WHEN y+z>x AND x+z>y AND x+y>z THEN 'Yes' 
ELSE 'No' 
END AS triangle
FROM Triangle_14;
