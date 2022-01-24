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
struct da9052_hwmon {int /*<<< orphan*/  da9052; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct da9052_hwmon* FUNC1 (struct device*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (char*,char*,int) ; 
 TYPE_1__* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					struct device_attribute *devattr,
					char *buf)
{
	struct da9052_hwmon *hwmon = FUNC1(dev);
	int channel = FUNC4(devattr)->index;
	int ret;

	ret = FUNC0(hwmon->da9052, channel);
	if (ret < 0)
		return ret;

	return FUNC3(buf, "%d\n", FUNC2(ret));
}