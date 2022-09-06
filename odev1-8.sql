--1
CREATE TABLE employee (
	id INTEGER,
	name VARCHAR(50) NOT NULL,
	birthday DATE,
	email VARCHAR(100)

);
--2
insert into employee (id, name, email, birthday) values (1, 'Camel Guyer', 'cguyer0@pagesperso-orange.fr', '9/24/2021');
insert into employee (id, name, email, birthday) values (2, 'Brew Pleuman', 'bpleuman1@nsw.gov.au', '11/30/2021');
...
insert into employee (id, name, email, birthday) values (49, 'Dickie Highnam', 'dhighnam1c@indiegogo.com', '12/28/2021');
insert into employee (id, name, email, birthday) values (50, 'Padgett McTague', 'pmctague1d@ebay.com', '10/17/2021');

--3.1
UPDATE employee
SET name = 'Omer'
WHERE id = 22
RETURNING *;
--3.2
UPDATE employee
SET email = 'omer@gmail.com'
WHERE name = 'Alli Mosby'
RETURNING *;
--3.3
UPDATE employee
SET birthday = '2003-04-23'
WHERE email = 'tugba@gmail.com'
RETURNING *;
--3.4
UPDATE employee
SET name = 'Emel'
WHERE email = 'tugba@gmail.com'
RETURNING *;
--3.5
UPDATE employee
SET id = 55
WHERE birthday = '2003-04-23'
RETURNING *;

--4.1
DELETE FROM employee
WHERE name = 'Emel';
--4.2
DELETE FROM employee
WHERE id = 11;
--4.3
DELETE FROM employee
WHERE email ='hkarlmanng@mapy.cz'
RETURNING *;
--4.4
DELETE FROM employee
WHERE birthday = '2021-11-12';
--4.5
DELETE FROM employee
WHERE email ILIKE 'b%'';

