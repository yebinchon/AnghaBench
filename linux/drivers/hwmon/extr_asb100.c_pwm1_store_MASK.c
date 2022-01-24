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
struct asb100_data {int pwm; int /*<<< orphan*/  update_lock; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  ASB100_REG_PWM1 ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct asb100_data* FUNC2 (struct i2c_client*) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC6 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute *attr,
			  const char *buf, size_t count)
{
	struct i2c_client *client = FUNC6(dev);
	struct asb100_data *data = FUNC2(client);
	unsigned long val;
	int err;

	err = FUNC3(buf, 10, &val);
	if (err)
		return err;

	FUNC4(&data->update_lock);
	data->pwm &= 0x80; /* keep the enable bit */
	data->pwm |= (0x0f & FUNC0(val));
	FUNC1(client, ASB100_REG_PWM1, data->pwm);
	FUNC5(&data->update_lock);
	return count;
}