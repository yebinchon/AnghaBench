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
struct sch5636_data {int* fan_ctrl; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sch5636_data*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct sch5636_data*) ; 
 int SCH5636_FAN_ALARM ; 
 struct sch5636_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,int) ; 
 struct sensor_device_attribute* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			      struct device_attribute *devattr, char *buf)
{
	struct sensor_device_attribute *attr = FUNC4(devattr);
	struct sch5636_data *data = FUNC2(dev);
	int val;

	if (FUNC0(data))
		return FUNC1(data);

	val = (data->fan_ctrl[attr->index] & SCH5636_FAN_ALARM) ? 1 : 0;
	return FUNC3(buf, PAGE_SIZE, "%d\n", val);
}