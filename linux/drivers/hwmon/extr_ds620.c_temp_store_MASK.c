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
struct i2c_client {int dummy; } ;
struct ds620_data {long* temp; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/ * DS620_REG_TEMP ; 
 int FUNC0 (long,int,int) ; 
 struct ds620_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,long) ; 
 int FUNC3 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute *da,
			  const char *buf, size_t count)
{
	int res;
	long val;

	struct sensor_device_attribute *attr = FUNC6(da);
	struct ds620_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;

	res = FUNC3(buf, 10, &val);

	if (res)
		return res;

	val = (FUNC0(val, -128000, 128000) * 10 / 625) * 8;

	FUNC4(&data->update_lock);
	data->temp[attr->index] = val;
	FUNC2(client, DS620_REG_TEMP[attr->index],
				     data->temp[attr->index]);
	FUNC5(&data->update_lock);
	return count;
}