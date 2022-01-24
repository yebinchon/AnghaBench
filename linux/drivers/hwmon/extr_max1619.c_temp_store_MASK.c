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
struct max1619_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * temp; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct max1619_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * regs_write ; 
 int /*<<< orphan*/  FUNC5 (long) ; 
 struct sensor_device_attribute* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
			  struct device_attribute *devattr, const char *buf,
			  size_t count)
{
	struct sensor_device_attribute *attr = FUNC6(devattr);
	struct max1619_data *data = FUNC0(dev);
	struct i2c_client *client = data->client;
	long val;
	int err = FUNC2(buf, 10, &val);
	if (err)
		return err;

	FUNC3(&data->update_lock);
	data->temp[attr->index] = FUNC5(val);
	FUNC1(client, regs_write[attr->index],
				  data->temp[attr->index]);
	FUNC4(&data->update_lock);
	return count;
}