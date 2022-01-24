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
struct sensor_device_attribute_2 {size_t index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int /*<<< orphan*/  lock; int /*<<< orphan*/ * pwmctl; struct i2c_client* client; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,size_t) ; 
 struct adt7475_data* FUNC1 (struct device*) ; 
 int FUNC2 (struct i2c_client*,size_t,int /*<<< orphan*/ ,long) ; 
 scalar_t__ FUNC3 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute_2* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
			     struct device_attribute *attr, const char *buf,
			     size_t count)
{
	struct sensor_device_attribute_2 *sattr = FUNC6(attr);
	struct adt7475_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	int r;
	long val;

	if (FUNC3(buf, 10, &val))
		return -EINVAL;

	FUNC4(&data->lock);
	/* Read Modify Write PWM values */
	FUNC0(client, sattr->index);
	r = FUNC2(client, sattr->index, data->pwmctl[sattr->index], val);
	if (r)
		count = r;
	FUNC5(&data->lock);

	return count;
}