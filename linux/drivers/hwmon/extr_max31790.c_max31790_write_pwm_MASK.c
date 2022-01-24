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
typedef  int u32 ;
struct max31790_data {long* pwm; int* fan_config; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int MAX31790_FAN_CFG_RPM_MODE ; 
 int MAX31790_FAN_CFG_TACH_INPUT_EN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct max31790_data* FUNC2 (struct device*) ; 
#define  hwmon_pwm_enable 129 
#define  hwmon_pwm_input 128 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct device *dev, u32 attr, int channel,
			      long val)
{
	struct max31790_data *data = FUNC2(dev);
	struct i2c_client *client = data->client;
	u8 fan_config;
	int err = 0;

	FUNC5(&data->update_lock);

	switch (attr) {
	case hwmon_pwm_input:
		if (val < 0 || val > 255) {
			err = -EINVAL;
			break;
		}
		data->pwm[channel] = val << 8;
		err = FUNC4(client,
						   FUNC1(channel),
						   data->pwm[channel]);
		break;
	case hwmon_pwm_enable:
		fan_config = data->fan_config[channel];
		if (val == 0) {
			fan_config &= ~(MAX31790_FAN_CFG_TACH_INPUT_EN |
					MAX31790_FAN_CFG_RPM_MODE);
		} else if (val == 1) {
			fan_config = (fan_config |
				      MAX31790_FAN_CFG_TACH_INPUT_EN) &
				     ~MAX31790_FAN_CFG_RPM_MODE;
		} else if (val == 2) {
			fan_config |= MAX31790_FAN_CFG_TACH_INPUT_EN |
				      MAX31790_FAN_CFG_RPM_MODE;
		} else {
			err = -EINVAL;
			break;
		}
		data->fan_config[channel] = fan_config;
		err = FUNC3(client,
					FUNC0(channel),
					fan_config);
		break;
	default:
		err = -EOPNOTSUPP;
		break;
	}

	FUNC6(&data->update_lock);

	return err;
}