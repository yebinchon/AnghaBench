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
struct adt7462_data {long* fan_min; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 size_t EINVAL ; 
 long FUNC1 (long) ; 
 long FUNC2 (long,int,int) ; 
 struct adt7462_data* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct adt7462_data*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,long) ; 
 scalar_t__ FUNC6 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
			     struct device_attribute *devattr,
			     const char *buf, size_t count)
{
	struct sensor_device_attribute *attr = FUNC9(devattr);
	struct adt7462_data *data = FUNC3(dev);
	struct i2c_client *client = data->client;
	long temp;

	if (FUNC6(buf, 10, &temp) || !temp ||
	    !FUNC4(data, attr->index))
		return -EINVAL;

	temp = FUNC1(temp);
	temp >>= 8;
	temp = FUNC2(temp, 1, 255);

	FUNC7(&data->lock);
	data->fan_min[attr->index] = temp;
	FUNC5(client, FUNC0(attr->index),
				  temp);
	FUNC8(&data->lock);

	return count;
}