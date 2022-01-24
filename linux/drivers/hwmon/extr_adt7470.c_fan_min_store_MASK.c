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
struct adt7470_data {long* fan_min; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 size_t EINVAL ; 
 long FUNC1 (long) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,long) ; 
 long FUNC3 (long,int,int) ; 
 struct adt7470_data* FUNC4 (struct device*) ; 
 scalar_t__ FUNC5 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
			     struct device_attribute *devattr,
			     const char *buf, size_t count)
{
	struct sensor_device_attribute *attr = FUNC8(devattr);
	struct adt7470_data *data = FUNC4(dev);
	struct i2c_client *client = data->client;
	long temp;

	if (FUNC5(buf, 10, &temp) || !temp)
		return -EINVAL;

	temp = FUNC1(temp);
	temp = FUNC3(temp, 1, 65534);

	FUNC6(&data->lock);
	data->fan_min[attr->index] = temp;
	FUNC2(client, FUNC0(attr->index), temp);
	FUNC7(&data->lock);

	return count;
}