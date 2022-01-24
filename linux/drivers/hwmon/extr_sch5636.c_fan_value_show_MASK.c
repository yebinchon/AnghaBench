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
struct sensor_device_attribute {size_t index; } ;
struct sch5636_data {int /*<<< orphan*/ * fan_val; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sch5636_data*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (struct sch5636_data*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct sch5636_data* FUNC3 (struct device*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,char*,int) ; 
 struct sensor_device_attribute* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
			      struct device_attribute *devattr, char *buf)
{
	struct sensor_device_attribute *attr = FUNC5(devattr);
	struct sch5636_data *data = FUNC3(dev);
	int val;

	if (FUNC0(data))
		return FUNC1(data);

	val = FUNC2(data->fan_val[attr->index]);
	if (val < 0)
		return val;

	return FUNC4(buf, PAGE_SIZE, "%d\n", val);
}