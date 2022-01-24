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
struct da9052_hwmon {int /*<<< orphan*/  hwmon_lock; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int FUNC0 (struct device*,int) ; 
 struct da9052_hwmon* FUNC1 (struct device*) ; 
 int FUNC2 (struct da9052_hwmon*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,char*,int) ; 
 TYPE_1__* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
			       struct device_attribute *devattr, char *buf)
{
	struct da9052_hwmon *hwmon = FUNC1(dev);
	int channel = FUNC6(devattr)->index;
	int ret;

	FUNC3(&hwmon->hwmon_lock);
	ret = FUNC0(dev, channel);
	FUNC4(&hwmon->hwmon_lock);

	if (ret < 0)
		return ret;
	else
		return FUNC5(buf, "%d\n", FUNC2(hwmon, ret));
}