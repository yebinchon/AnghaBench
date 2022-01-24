#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1031_data {int conf1; int* old_pwm; int* pwm; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int ADM1031_CONF1_AUTO_MODE ; 
 int /*<<< orphan*/  ADM1031_REG_CONF1 ; 
 int /*<<< orphan*/  ADM1031_REG_PWM ; 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct adm1031_data* FUNC2 (struct device*) ; 
 int FUNC3 (struct adm1031_data*,int,long,int) ; 
 int FUNC4 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t
FUNC8(struct device *dev, struct device_attribute *attr,
		       const char *buf, size_t count)
{
	struct adm1031_data *data = FUNC2(dev);
	struct i2c_client *client = data->client;
	int nr = FUNC7(attr)->index;
	long val;
	u8 reg;
	int ret;
	u8 old_fan_mode;

	ret = FUNC4(buf, 10, &val);
	if (ret)
		return ret;

	old_fan_mode = data->conf1;

	FUNC5(&data->update_lock);

	ret = FUNC3(data, nr, val, data->conf1);
	if (ret < 0) {
		FUNC6(&data->update_lock);
		return ret;
	}
	reg = ret;
	data->conf1 = FUNC0(reg, data->conf1);
	if ((data->conf1 & ADM1031_CONF1_AUTO_MODE) ^
	    (old_fan_mode & ADM1031_CONF1_AUTO_MODE)) {
		if (data->conf1 & ADM1031_CONF1_AUTO_MODE) {
			/*
			 * Switch to Auto Fan Mode
			 * Save PWM registers
			 * Set PWM registers to 33% Both
			 */
			data->old_pwm[0] = data->pwm[0];
			data->old_pwm[1] = data->pwm[1];
			FUNC1(client, ADM1031_REG_PWM, 0x55);
		} else {
			/* Switch to Manual Mode */
			data->pwm[0] = data->old_pwm[0];
			data->pwm[1] = data->old_pwm[1];
			/* Restore PWM registers */
			FUNC1(client, ADM1031_REG_PWM,
					    data->pwm[0] | (data->pwm[1] << 4));
		}
	}
	data->conf1 = FUNC0(reg, data->conf1);
	FUNC1(client, ADM1031_REG_CONF1, data->conf1);
	FUNC6(&data->update_lock);
	return count;
}