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
struct regmap {int dummy; } ;
struct lm95245_data {int /*<<< orphan*/  update_lock; struct regmap* regmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG2_REMOTE_TT ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int LM95245_REG_RW_COMMON_HYSTERESIS ; 
 int /*<<< orphan*/  LM95245_REG_RW_CONFIG2 ; 
 int LM95245_REG_RW_LOCAL_OS_TCRIT_LIMIT ; 
 int LM95245_REG_RW_REMOTE_OFFH ; 
 int LM95245_REG_RW_REMOTE_OFFL ; 
 int LM95245_REG_RW_REMOTE_OS_LIMIT ; 
 int LM95245_REG_RW_REMOTE_TCRIT_LIMIT ; 
 long FUNC0 (long,int,int) ; 
 struct lm95245_data* FUNC1 (struct device*) ; 
#define  hwmon_temp_crit 132 
#define  hwmon_temp_crit_hyst 131 
#define  hwmon_temp_max 130 
#define  hwmon_temp_offset 129 
#define  hwmon_temp_type 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct regmap*,int,unsigned int*) ; 
 int FUNC5 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct regmap*,int,long) ; 

__attribute__((used)) static int FUNC7(struct device *dev, u32 attr, int channel,
			      long val)
{
	struct lm95245_data *data = FUNC1(dev);
	struct regmap *regmap = data->regmap;
	unsigned int regval;
	int ret, reg;

	switch (attr) {
	case hwmon_temp_max:
		val = FUNC0(val / 1000, 0, 255);
		ret = FUNC6(regmap, LM95245_REG_RW_REMOTE_OS_LIMIT, val);
		return ret;
	case hwmon_temp_crit:
		reg = channel ? LM95245_REG_RW_REMOTE_TCRIT_LIMIT :
				LM95245_REG_RW_LOCAL_OS_TCRIT_LIMIT;
		val = FUNC0(val / 1000, 0, channel ? 255 : 127);
		ret = FUNC6(regmap, reg, val);
		return ret;
	case hwmon_temp_crit_hyst:
		FUNC2(&data->update_lock);
		ret = FUNC4(regmap, LM95245_REG_RW_LOCAL_OS_TCRIT_LIMIT,
				  &regval);
		if (ret < 0) {
			FUNC3(&data->update_lock);
			return ret;
		}
		/* Clamp to reasonable range to prevent overflow */
		val = FUNC0(val, -1000000, 1000000);
		val = regval - val / 1000;
		val = FUNC0(val, 0, 31);
		ret = FUNC6(regmap, LM95245_REG_RW_COMMON_HYSTERESIS,
				   val);
		FUNC3(&data->update_lock);
		return ret;
	case hwmon_temp_offset:
		val = FUNC0(val, -128000, 127875);
		val = val * 256 / 1000;
		FUNC2(&data->update_lock);
		ret = FUNC6(regmap, LM95245_REG_RW_REMOTE_OFFL,
				   val & 0xe0);
		if (ret < 0) {
			FUNC3(&data->update_lock);
			return ret;
		}
		ret = FUNC6(regmap, LM95245_REG_RW_REMOTE_OFFH,
				   (val >> 8) & 0xff);
		FUNC3(&data->update_lock);
		return ret;
	case hwmon_temp_type:
		if (val != 1 && val != 2)
			return -EINVAL;
		ret = FUNC5(regmap, LM95245_REG_RW_CONFIG2,
					 CFG2_REMOTE_TT,
					 val == 1 ? CFG2_REMOTE_TT : 0);
		return ret;
	default:
		return -EOPNOTSUPP;
	}
}