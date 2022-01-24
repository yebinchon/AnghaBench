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
typedef  long u32 ;
struct mlxreg_fan_tacho {int /*<<< orphan*/  mask; int /*<<< orphan*/  reg; } ;
struct TYPE_2__ {int /*<<< orphan*/  reg; } ;
struct mlxreg_fan {TYPE_1__ pwm; int /*<<< orphan*/  regmap; int /*<<< orphan*/  samples; int /*<<< orphan*/  divider; struct mlxreg_fan_tacho* tacho; } ;
struct device {int dummy; } ;
typedef  enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 long FUNC0 (long,int /*<<< orphan*/ ) ; 
 long FUNC1 (long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlxreg_fan* FUNC2 (struct device*) ; 
#define  hwmon_fan 132 
#define  hwmon_fan_fault 131 
#define  hwmon_fan_input 130 
#define  hwmon_pwm 129 
#define  hwmon_pwm_input 128 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long*) ; 

__attribute__((used)) static int
FUNC4(struct device *dev, enum hwmon_sensor_types type, u32 attr,
		int channel, long *val)
{
	struct mlxreg_fan *fan = FUNC2(dev);
	struct mlxreg_fan_tacho *tacho;
	u32 regval;
	int err;

	switch (type) {
	case hwmon_fan:
		tacho = &fan->tacho[channel];
		switch (attr) {
		case hwmon_fan_input:
			err = FUNC3(fan->regmap, tacho->reg, &regval);
			if (err)
				return err;

			*val = FUNC1(regval, fan->divider,
						  fan->samples);
			break;

		case hwmon_fan_fault:
			err = FUNC3(fan->regmap, tacho->reg, &regval);
			if (err)
				return err;

			*val = FUNC0(regval, tacho->mask);
			break;

		default:
			return -EOPNOTSUPP;
		}
		break;

	case hwmon_pwm:
		switch (attr) {
		case hwmon_pwm_input:
			err = FUNC3(fan->regmap, fan->pwm.reg, &regval);
			if (err)
				return err;

			*val = regval;
			break;

		default:
			return -EOPNOTSUPP;
		}
		break;

	default:
		return -EOPNOTSUPP;
	}

	return 0;
}