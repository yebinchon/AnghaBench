#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cyapa {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PIP_SENSING_MODE_MUTUAL_CAP_FINE ; 
 int /*<<< orphan*/  PIP_SENSING_MODE_SELF_CAP ; 
 int FUNC0 (struct cyapa*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cyapa*) ; 
 int FUNC2 (struct cyapa*) ; 
 struct cyapa* FUNC3 (struct device*) ; 

ssize_t FUNC4(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf, size_t count)
{
	struct cyapa *cyapa = FUNC3(dev);
	int error, calibrate_error;

	/* 1. Suspend Scanning*/
	error = FUNC2(cyapa);
	if (error)
		return error;

	/* 2. Do mutual capacitance fine calibrate. */
	calibrate_error = FUNC0(cyapa,
				PIP_SENSING_MODE_MUTUAL_CAP_FINE);
	if (calibrate_error)
		goto resume_scanning;

	/* 3. Do self capacitance calibrate. */
	calibrate_error = FUNC0(cyapa,
				PIP_SENSING_MODE_SELF_CAP);
	if (calibrate_error)
		goto resume_scanning;

resume_scanning:
	/* 4. Resume Scanning*/
	error = FUNC1(cyapa);
	if (error || calibrate_error)
		return error ? error : calibrate_error;

	return count;
}