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
struct adt7462_data {int* pwm_tmin; int* pwm_trange; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ADT7462_PWM_HYST_MASK ; 
 int ADT7462_PWM_RANGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int EINVAL ; 
 struct adt7462_data* FUNC1 (struct device*) ; 
 int FUNC2 (long) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
			      struct device_attribute *devattr,
			      const char *buf, size_t count)
{
	int temp;
	struct sensor_device_attribute *attr = FUNC7(devattr);
	struct adt7462_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	int tmin, trange_value;
	long trange;

	if (FUNC4(buf, 10, &trange))
		return -EINVAL;

	/* trange = tmax - tmin */
	tmin = (data->pwm_tmin[attr->index] - 64) * 1000;
	trange_value = FUNC2(trange - tmin);
	if (trange_value < 0)
		return trange_value;

	temp = trange_value << ADT7462_PWM_RANGE_SHIFT;
	temp |= data->pwm_trange[attr->index] & ADT7462_PWM_HYST_MASK;

	FUNC5(&data->lock);
	data->pwm_trange[attr->index] = temp;
	FUNC3(client, FUNC0(attr->index),
				  temp);
	FUNC6(&data->lock);

	return count;
}