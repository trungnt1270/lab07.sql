CREATE DATABASE lab10
USE master


USE AdventureWorks2014

SELECT * INTO Lab10.dbo.WorkOrder FROM Production.WorkOrder

USE Lab10

SELECT * INTO WorkOrderIX FROM WorkOrder

SELECT * FROM WorkOrder

SELECT * FROM WorkOrderIX

CREATE INDEX IX_WorkOrderID ON WorkOrderIX(WorkOrderID)

SELECT*FROM WorkOrder where WorkOrderID=72000
SELECT*FROM WorkOrderIX where WorkOrderID=72000



CREATE DATABASE lab07
GO
USE lab07
GO

CREATE TABLE Student(
	StudentNo INT PRIMARY KEY,
	StudentName varchar(50),
	StudentAddress varchar(100),
	PhoneNo int
)

CREATE TABLE Department(
	DeptNo INT PRIMARY KEY,
	DeptName varchar(50),
	ManagerName char(30)
)

CREATE TABLE Assignment(
	AssignmentNO INT PRIMARY KEY,
	Descriptions varchar(100)
)

CREATE TABLE Works_Assign(
	JobID INT PRIMARY KEY,
	StudentNo INT,
	AssignmentNo INT,
	TotalHours INT,
	JobDetails XML
)
--1
CREATE INDEX IX_Student ON Student(StudentNo)
--2
ALTER INDEX  IX_Student ON Student REBUILD
--3
CREATE NONCLUSTERED INDEX IX_Dept ON Department(DeptNo,DeptName,ManagerName)