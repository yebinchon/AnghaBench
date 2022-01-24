#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct da9055_hwmon {int /*<<< orphan*/  hwmon_lock; int /*<<< orphan*/  da9055; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 scalar_t__ DA9055_REG_VSYS_RES ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct da9055_hwmon* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char*,char*,int) ; 
 TYPE_1__* FUNC7 (struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int FUNC9 (int,int) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
				   struct device_attribute *devattr,
				   char *buf)
{
	struct da9055_hwmon *hwmon = FUNC3(dev);
	int ret, adc;
	int channel = FUNC7(devattr)->index;

	FUNC4(&hwmon->hwmon_lock);

	ret = FUNC1(hwmon->da9055, channel);
	if (ret < 0)
		goto hwmon_err;

	FUNC8(10000, 10500);

	adc = FUNC2(hwmon->da9055, DA9055_REG_VSYS_RES + channel);
	if (adc < 0) {
		ret = adc;
		goto hwmon_err_release;
	}

	ret = FUNC0(hwmon->da9055, channel);
	if (ret < 0)
		goto hwmon_err;

	FUNC5(&hwmon->hwmon_lock);

	return FUNC6(buf, "%d\n", FUNC9(adc, channel));

hwmon_err_release:
	FUNC0(hwmon->da9055, channel);
hwmon_err:
	FUNC5(&hwmon->hwmon_lock);
	return ret;
}