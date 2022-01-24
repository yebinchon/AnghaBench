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
struct ad7418_data {int /*<<< orphan*/  lock; int /*<<< orphan*/ * temp; struct i2c_client* client; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/ * AD7418_REG_TEMP ; 
 int /*<<< orphan*/  FUNC0 (long) ; 
 struct ad7418_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
			  struct device_attribute *devattr, const char *buf,
			  size_t count)
{
	struct sensor_device_attribute *attr = FUNC6(devattr);
	struct ad7418_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	long temp;
	int ret = FUNC3(buf, 10, &temp);

	if (ret < 0)
		return ret;

	FUNC4(&data->lock);
	data->temp[attr->index] = FUNC0(temp);
	FUNC2(client,
				     AD7418_REG_TEMP[attr->index],
				     data->temp[attr->index]);
	FUNC5(&data->lock);
	return count;
}