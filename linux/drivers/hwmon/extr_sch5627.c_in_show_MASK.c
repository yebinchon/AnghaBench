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
struct sch5627_data {int* in; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (struct sch5627_data*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct sch5627_data*) ; 
 int* SCH5627_REG_IN_FACTOR ; 
 struct sch5627_data* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*,int) ; 
 struct sensor_device_attribute* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *devattr,
		       char *buf)
{
	struct sensor_device_attribute *attr = FUNC5(devattr);
	struct sch5627_data *data = FUNC3(dev);
	int val;

	if (FUNC1(data))
		return FUNC2(data);

	val = FUNC0(
		data->in[attr->index] * SCH5627_REG_IN_FACTOR[attr->index],
		10000);
	return FUNC4(buf, PAGE_SIZE, "%d\n", val);
}