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
struct w83791d_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * fan_min; int /*<<< orphan*/ * fan_div; } ;
struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * W83791D_REG_FAN_MIN ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 struct w83791d_data* FUNC2 (struct i2c_client*) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC6 (struct device*) ; 
 struct sensor_device_attribute* FUNC7 (struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev, struct device_attribute *attr,
				const char *buf, size_t count)
{
	struct sensor_device_attribute *sensor_attr = FUNC7(attr);
	struct i2c_client *client = FUNC6(dev);
	struct w83791d_data *data = FUNC2(client);
	int nr = sensor_attr->index;
	unsigned long val;
	int err;

	err = FUNC3(buf, 10, &val);
	if (err)
		return err;

	FUNC4(&data->update_lock);
	data->fan_min[nr] = FUNC1(val, FUNC0(data->fan_div[nr]));
	FUNC8(client, W83791D_REG_FAN_MIN[nr], data->fan_min[nr]);
	FUNC5(&data->update_lock);

	return count;
}