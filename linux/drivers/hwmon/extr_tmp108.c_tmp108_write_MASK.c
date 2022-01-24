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
struct tmp108 {int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;
typedef  enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  TMP108_CONF_CONVRATE_MASK ; 
 int /*<<< orphan*/  TMP108_CONF_HYSTERESIS_MASK ; 
 int TMP108_CONVRATE_0P25HZ ; 
 int TMP108_CONVRATE_16HZ ; 
 int TMP108_CONVRATE_1HZ ; 
 int TMP108_CONVRATE_4HZ ; 
 int TMP108_HYSTERESIS_0C ; 
 int TMP108_HYSTERESIS_1C ; 
 int TMP108_HYSTERESIS_2C ; 
 int TMP108_HYSTERESIS_4C ; 
 int /*<<< orphan*/  TMP108_REG_CONF ; 
 int /*<<< orphan*/  TMP108_REG_THIGH ; 
 int /*<<< orphan*/  TMP108_REG_TLOW ; 
 int /*<<< orphan*/  TMP108_TEMP_MAX_MC ; 
 int /*<<< orphan*/  TMP108_TEMP_MIN_MC ; 
 long FUNC0 (long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tmp108* FUNC1 (struct device*) ; 
 int hwmon_chip ; 
 int hwmon_chip_update_interval ; 
#define  hwmon_temp_max 131 
#define  hwmon_temp_max_hyst 130 
#define  hwmon_temp_min 129 
#define  hwmon_temp_min_hyst 128 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (long) ; 
 long FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct device *dev, enum hwmon_sensor_types type,
			u32 attr, int channel, long temp)
{
	struct tmp108 *tmp108 = FUNC1(dev);
	u32 regval, mask;
	int err;

	if (type == hwmon_chip) {
		if (attr == hwmon_chip_update_interval) {
			if (temp < 156)
				mask = TMP108_CONVRATE_16HZ;
			else if (temp < 625)
				mask = TMP108_CONVRATE_4HZ;
			else if (temp < 2500)
				mask = TMP108_CONVRATE_1HZ;
			else
				mask = TMP108_CONVRATE_0P25HZ;
			return FUNC3(tmp108->regmap,
						  TMP108_REG_CONF,
						  TMP108_CONF_CONVRATE_MASK,
						  mask);
		}
		return -EOPNOTSUPP;
	}

	switch (attr) {
	case hwmon_temp_min:
	case hwmon_temp_max:
		temp = FUNC0(temp, TMP108_TEMP_MIN_MC, TMP108_TEMP_MAX_MC);
		return FUNC4(tmp108->regmap,
				    attr == hwmon_temp_min ?
					TMP108_REG_TLOW : TMP108_REG_THIGH,
				    FUNC5(temp));
	case hwmon_temp_min_hyst:
	case hwmon_temp_max_hyst:
		temp = FUNC0(temp, TMP108_TEMP_MIN_MC, TMP108_TEMP_MAX_MC);
		err = FUNC2(tmp108->regmap,
				  attr == hwmon_temp_min_hyst ?
					TMP108_REG_TLOW : TMP108_REG_THIGH,
				  &regval);
		if (err < 0)
			return err;
		if (attr == hwmon_temp_min_hyst)
			temp -= FUNC6(regval);
		else
			temp = FUNC6(regval) - temp;
		if (temp < 500)
			mask = TMP108_HYSTERESIS_0C;
		else if (temp < 1500)
			mask = TMP108_HYSTERESIS_1C;
		else if (temp < 3000)
			mask = TMP108_HYSTERESIS_2C;
		else
			mask = TMP108_HYSTERESIS_4C;
		return FUNC3(tmp108->regmap, TMP108_REG_CONF,
					  TMP108_CONF_HYSTERESIS_MASK, mask);
	default:
		return -EOPNOTSUPP;
	}
}