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
struct da9055_hwmon {int /*<<< orphan*/  da9055; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  DA9055_ADC_TJUNC ; 
 int /*<<< orphan*/  DA9055_REG_T_OFFSET ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (struct da9055_hwmon*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct da9055_hwmon* FUNC3 (struct device*) ; 
 int FUNC4 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				 struct device_attribute *devattr, char *buf)
{
	struct da9055_hwmon *hwmon = FUNC3(dev);
	int tjunc;
	int toffset;

	tjunc = FUNC1(hwmon, DA9055_ADC_TJUNC);
	if (tjunc < 0)
		return tjunc;

	toffset = FUNC2(hwmon->da9055, DA9055_REG_T_OFFSET);
	if (toffset < 0)
		return toffset;

	/*
	 * Degrees celsius = -0.4084 * (ADC_RES - T_OFFSET) + 307.6332
	 * T_OFFSET is a trim value used to improve accuracy of the result
	 */
	return FUNC4(buf, "%d\n", FUNC0(-4084 * (tjunc - toffset)
							+ 3076332, 10000));
}