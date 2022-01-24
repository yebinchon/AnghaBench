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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm9240_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * in_min; struct i2c_client* client; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,size_t) ; 
 struct adm9240_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
			    struct device_attribute *devattr, const char *buf,
			    size_t count)
{
	struct sensor_device_attribute *attr = FUNC7(devattr);
	struct adm9240_data *data = FUNC2(dev);
	struct i2c_client *client = data->client;
	unsigned long val;
	int err;

	err = FUNC4(buf, 10, &val);
	if (err)
		return err;

	FUNC5(&data->update_lock);
	data->in_min[attr->index] = FUNC1(val, attr->index);
	FUNC3(client, FUNC0(attr->index),
			data->in_min[attr->index]);
	FUNC6(&data->update_lock);
	return count;
}