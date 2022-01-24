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
struct adt7470_data {long* pwm_max; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 size_t EINVAL ; 
 long FUNC1 (long,int /*<<< orphan*/ ,int) ; 
 struct adt7470_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,long) ; 
 scalar_t__ FUNC4 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
			     struct device_attribute *devattr,
			     const char *buf, size_t count)
{
	struct sensor_device_attribute *attr = FUNC7(devattr);
	struct adt7470_data *data = FUNC2(dev);
	struct i2c_client *client = data->client;
	long temp;

	if (FUNC4(buf, 10, &temp))
		return -EINVAL;

	temp = FUNC1(temp, 0, 255);

	FUNC5(&data->lock);
	data->pwm_max[attr->index] = temp;
	FUNC3(client, FUNC0(attr->index),
				  temp);
	FUNC6(&data->lock);

	return count;
}