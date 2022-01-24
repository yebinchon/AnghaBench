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
struct sensor_device_attribute {int /*<<< orphan*/  index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7462_data {struct i2c_client* client; } ;
typedef  long ssize_t ;

/* Variables and functions */
 long EINVAL ; 
 long FUNC0 (long) ; 
 struct adt7462_data* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct adt7462_data*,int /*<<< orphan*/ ,long) ; 
 struct sensor_device_attribute* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				   struct device_attribute *devattr,
				   const char *buf, size_t count)
{
	struct sensor_device_attribute *attr = FUNC4(devattr);
	struct adt7462_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	long temp;

	if (FUNC2(buf, 10, &temp))
		return -EINVAL;

	temp = FUNC0(temp);
	if (temp < 0)
		return temp;

	FUNC3(client, data, attr->index, temp);

	return count;
}