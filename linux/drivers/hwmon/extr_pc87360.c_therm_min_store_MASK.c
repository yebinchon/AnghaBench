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
struct pc87360_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * in_min; int /*<<< orphan*/  in_vref; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LD_IN ; 
 int /*<<< orphan*/  PC87365_REG_TEMP_MIN ; 
 struct pc87360_data* FUNC1 (struct device*) ; 
 int FUNC2 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pc87360_data*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sensor_device_attribute* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
			       struct device_attribute *devattr,
			       const char *buf, size_t count)
{
	struct sensor_device_attribute *attr = FUNC6(devattr);
	struct pc87360_data *data = FUNC1(dev);
	long val;
	int err;

	err = FUNC2(buf, 10, &val);
	if (err)
		return err;

	FUNC3(&data->update_lock);
	data->in_min[attr->index] = FUNC0(val, data->in_vref);
	FUNC5(data, LD_IN, attr->index, PC87365_REG_TEMP_MIN,
			    data->in_min[attr->index]);
	FUNC4(&data->update_lock);
	return count;
}