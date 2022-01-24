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
struct sensor_device_attribute {int /*<<< orphan*/  index; } ;
struct pmbus_data {int dummy; } ;
struct pmbus_boolean {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct pmbus_data*,struct pmbus_boolean*,int /*<<< orphan*/ ) ; 
 struct pmbus_data* FUNC1 (struct device*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,char*,int) ; 
 struct pmbus_boolean* FUNC3 (struct sensor_device_attribute*) ; 
 struct sensor_device_attribute* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				  struct device_attribute *da, char *buf)
{
	struct sensor_device_attribute *attr = FUNC4(da);
	struct pmbus_boolean *boolean = FUNC3(attr);
	struct pmbus_data *data = FUNC1(dev);
	int val;

	val = FUNC0(data, boolean, attr->index);
	if (val < 0)
		return val;
	return FUNC2(buf, PAGE_SIZE, "%d\n", val);
}