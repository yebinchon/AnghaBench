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
struct max6639_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * temp_ot; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 struct max6639_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
				    struct device_attribute *dev_attr,
				    const char *buf, size_t count)
{
	struct sensor_device_attribute *attr = FUNC7(dev_attr);
	struct max6639_data *data = FUNC2(dev);
	struct i2c_client *client = data->client;
	unsigned long val;
	int res;

	res = FUNC4(buf, 10, &val);
	if (res)
		return res;

	FUNC5(&data->update_lock);
	data->temp_ot[attr->index] = FUNC1(val);
	FUNC3(client,
				  FUNC0(attr->index),
				  data->temp_ot[attr->index]);
	FUNC6(&data->update_lock);
	return count;
}