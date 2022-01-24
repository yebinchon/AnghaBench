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
struct da9052_hwmon {int /*<<< orphan*/  hwmon_lock; int /*<<< orphan*/  da9052; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  DA9052_VDD_RES_REG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct da9052_hwmon* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char*,char*,int) ; 
 int FUNC7 (int) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
				  struct device_attribute *devattr, char *buf)
{
	struct da9052_hwmon *hwmon = FUNC3(dev);
	int ret, vdd;

	FUNC4(&hwmon->hwmon_lock);

	ret = FUNC1(hwmon->da9052);
	if (ret < 0)
		goto hwmon_err;

	vdd = FUNC2(hwmon->da9052, DA9052_VDD_RES_REG);
	if (vdd < 0) {
		ret = vdd;
		goto hwmon_err_release;
	}

	ret = FUNC0(hwmon->da9052);
	if (ret < 0)
		goto hwmon_err;

	FUNC5(&hwmon->hwmon_lock);
	return FUNC6(buf, "%d\n", FUNC7(vdd));

hwmon_err_release:
	FUNC0(hwmon->da9052);
hwmon_err:
	FUNC5(&hwmon->hwmon_lock);
	return ret;
}