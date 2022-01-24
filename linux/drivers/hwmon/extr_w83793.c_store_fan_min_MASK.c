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
struct w83793_data {unsigned long* fan_min; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute_2 {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (int) ; 
 struct w83793_data* FUNC2 (struct i2c_client*) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC6 (struct device*) ; 
 struct sensor_device_attribute_2* FUNC7 (struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,scalar_t__,unsigned long) ; 

__attribute__((used)) static ssize_t
FUNC9(struct device *dev, struct device_attribute *attr,
	      const char *buf, size_t count)
{
	struct sensor_device_attribute_2 *sensor_attr =
	    FUNC7(attr);
	int index = sensor_attr->index;
	struct i2c_client *client = FUNC6(dev);
	struct w83793_data *data = FUNC2(client);
	unsigned long val;
	int err;

	err = FUNC3(buf, 10, &val);
	if (err)
		return err;
	val = FUNC0(val);

	FUNC4(&data->update_lock);
	data->fan_min[index] = val;
	FUNC8(client, FUNC1(index),
			   (val >> 8) & 0xff);
	FUNC8(client, FUNC1(index) + 1, val & 0xff);
	FUNC5(&data->update_lock);

	return count;
}