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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct ina3221_data {int /*<<< orphan*/  reg_config; int /*<<< orphan*/  regmap; int /*<<< orphan*/  single_shot; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODATA ; 
 int EOPNOTSUPP ; 
 int INA3221_CHANNEL3 ; 
 int /*<<< orphan*/  INA3221_CONFIG ; 
 int INA3221_NUM_CHANNELS ; 
 struct ina3221_data* FUNC0 (struct device*) ; 
#define  hwmon_in_enable 129 
#define  hwmon_in_input 128 
 int /*<<< orphan*/ * ina3221_in_reg ; 
 long FUNC1 (struct ina3221_data*,int) ; 
 int FUNC2 (struct ina3221_data*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (struct ina3221_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device *dev, u32 attr, int channel, long *val)
{
	const bool is_shunt = channel > INA3221_CHANNEL3;
	struct ina3221_data *ina = FUNC0(dev);
	u8 reg = ina3221_in_reg[channel];
	int regval, ret;

	/* Translate shunt channel index to sensor channel index */
	channel %= INA3221_NUM_CHANNELS;

	switch (attr) {
	case hwmon_in_input:
		if (!FUNC1(ina, channel))
			return -ENODATA;

		/* Write CONFIG register to trigger a single-shot measurement */
		if (ina->single_shot)
			FUNC4(ina->regmap, INA3221_CONFIG,
				     ina->reg_config);

		ret = FUNC3(ina);
		if (ret)
			return ret;

		ret = FUNC2(ina, reg, &regval);
		if (ret)
			return ret;

		/*
		 * Scale of shunt voltage (uV): LSB is 40uV
		 * Scale of bus voltage (mV): LSB is 8mV
		 */
		*val = regval * (is_shunt ? 40 : 8);
		return 0;
	case hwmon_in_enable:
		*val = FUNC1(ina, channel);
		return 0;
	default:
		return -EOPNOTSUPP;
	}
}