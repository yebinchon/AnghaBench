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
struct max31790_data {int* fan_config; int* pwm; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct max31790_data*) ; 
 int MAX31790_FAN_CFG_RPM_MODE ; 
 int MAX31790_FAN_CFG_TACH_INPUT_EN ; 
 int FUNC1 (struct max31790_data*) ; 
#define  hwmon_pwm_enable 129 
#define  hwmon_pwm_input 128 
 struct max31790_data* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, u32 attr, int channel,
			     long *val)
{
	struct max31790_data *data = FUNC2(dev);
	u8 fan_config;

	if (FUNC0(data))
		return FUNC1(data);

	fan_config = data->fan_config[channel];

	switch (attr) {
	case hwmon_pwm_input:
		*val = data->pwm[channel] >> 8;
		return 0;
	case hwmon_pwm_enable:
		if (fan_config & MAX31790_FAN_CFG_RPM_MODE)
			*val = 2;
		else if (fan_config & MAX31790_FAN_CFG_TACH_INPUT_EN)
			*val = 1;
		else
			*val = 0;
		return 0;
	default:
		return -EOPNOTSUPP;
	}
}