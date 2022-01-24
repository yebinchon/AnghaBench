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
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct da9052_hwmon* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				struct device_attribute *devattr, char *buf)
{
	struct da9052_hwmon *hwmon = FUNC1(dev);

	return FUNC2(buf, "%d\n", FUNC0(hwmon->da9052));
}