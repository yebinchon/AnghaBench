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
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7462_data {long pwm_max; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADT7462_REG_PWM_MAX ; 
 size_t EINVAL ; 
 long FUNC0 (long,int /*<<< orphan*/ ,int) ; 
 struct adt7462_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,long) ; 
 scalar_t__ FUNC3 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
			     struct device_attribute *devattr,
			     const char *buf, size_t count)
{
	struct adt7462_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	long temp;

	if (FUNC3(buf, 10, &temp))
		return -EINVAL;

	temp = FUNC0(temp, 0, 255);

	FUNC4(&data->lock);
	data->pwm_max = temp;
	FUNC2(client, ADT7462_REG_PWM_MAX, temp);
	FUNC5(&data->lock);

	return count;
}