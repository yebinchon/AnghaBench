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
struct da9052_hwmon {int /*<<< orphan*/  da9052; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  DA9052_TJUNC_RES_REG ; 
 int /*<<< orphan*/  DA9052_T_OFFSET_REG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct da9052_hwmon* FUNC1 (struct device*) ; 
 int FUNC2 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				 struct device_attribute *devattr, char *buf)
{
	struct da9052_hwmon *hwmon = FUNC1(dev);
	int tjunc;
	int toffset;

	tjunc = FUNC0(hwmon->da9052, DA9052_TJUNC_RES_REG);
	if (tjunc < 0)
		return tjunc;

	toffset = FUNC0(hwmon->da9052, DA9052_T_OFFSET_REG);
	if (toffset < 0)
		return toffset;

	/*
	 * Degrees celsius = 1.708 * (TJUNC_RES - T_OFFSET) - 108.8
	 * T_OFFSET is a trim value used to improve accuracy of the result
	 */
	return FUNC2(buf, "%d\n", 1708 * (tjunc - toffset) - 108800);
}