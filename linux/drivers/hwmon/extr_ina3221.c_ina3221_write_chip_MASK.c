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
typedef  int u32 ;
struct ina3221_data {int reg_config; int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  INA3221_CONFIG ; 
 int INA3221_CONFIG_AVG_MASK ; 
 int INA3221_CONFIG_AVG_SHIFT ; 
 int INA3221_CONFIG_VBUS_CT_MASK ; 
 int INA3221_CONFIG_VBUS_CT_SHIFT ; 
 int INA3221_CONFIG_VSH_CT_MASK ; 
 int INA3221_CONFIG_VSH_CT_SHIFT ; 
 struct ina3221_data* FUNC1 (struct device*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  hwmon_chip_samples 129 
#define  hwmon_chip_update_interval 128 
 int /*<<< orphan*/  ina3221_avg_samples ; 
 int /*<<< orphan*/  ina3221_conv_time ; 
 int FUNC3 (int,long) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct device *dev, u32 attr, long val)
{
	struct ina3221_data *ina = FUNC1(dev);
	int ret, idx;
	u32 tmp;

	switch (attr) {
	case hwmon_chip_samples:
		idx = FUNC2(val, ina3221_avg_samples,
				   FUNC0(ina3221_avg_samples));

		tmp = (ina->reg_config & ~INA3221_CONFIG_AVG_MASK) |
		      (idx << INA3221_CONFIG_AVG_SHIFT);
		ret = FUNC4(ina->regmap, INA3221_CONFIG, tmp);
		if (ret)
			return ret;

		/* Update reg_config accordingly */
		ina->reg_config = tmp;
		return 0;
	case hwmon_chip_update_interval:
		tmp = FUNC3(ina->reg_config, val);
		idx = FUNC2(tmp, ina3221_conv_time,
				   FUNC0(ina3221_conv_time));

		/* Update Bus and Shunt voltage conversion times */
		tmp = INA3221_CONFIG_VBUS_CT_MASK | INA3221_CONFIG_VSH_CT_MASK;
		tmp = (ina->reg_config & ~tmp) |
		      (idx << INA3221_CONFIG_VBUS_CT_SHIFT) |
		      (idx << INA3221_CONFIG_VSH_CT_SHIFT);
		ret = FUNC4(ina->regmap, INA3221_CONFIG, tmp);
		if (ret)
			return ret;

		/* Update reg_config accordingly */
		ina->reg_config = tmp;
		return 0;
	default:
		return -EOPNOTSUPP;
	}
}