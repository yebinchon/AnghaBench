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
typedef  int u8 ;
struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7470_data {long* pwm_automatic; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int ADT7470_PWM1_AUTO_MASK ; 
 int ADT7470_PWM2_AUTO_MASK ; 
 int FUNC0 (int) ; 
 size_t EINVAL ; 
 struct adt7470_data* FUNC1 (struct device*) ; 
 int FUNC2 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int,int) ; 
 scalar_t__ FUNC4 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct sensor_device_attribute* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
			      struct device_attribute *devattr,
			      const char *buf, size_t count)
{
	struct sensor_device_attribute *attr = FUNC7(devattr);
	struct adt7470_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	int pwm_auto_reg = FUNC0(attr->index);
	int pwm_auto_reg_mask;
	long temp;
	u8 reg;

	if (FUNC4(buf, 10, &temp))
		return -EINVAL;

	if (attr->index % 2)
		pwm_auto_reg_mask = ADT7470_PWM2_AUTO_MASK;
	else
		pwm_auto_reg_mask = ADT7470_PWM1_AUTO_MASK;

	if (temp != 2 && temp != 1)
		return -EINVAL;
	temp--;

	FUNC5(&data->lock);
	data->pwm_automatic[attr->index] = temp;
	reg = FUNC2(client, pwm_auto_reg);
	if (temp)
		reg |= pwm_auto_reg_mask;
	else
		reg &= ~pwm_auto_reg_mask;
	FUNC3(client, pwm_auto_reg, reg);
	FUNC6(&data->lock);

	return count;
}