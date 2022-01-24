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
typedef  int /*<<< orphan*/  u32 ;
struct max6621_data {int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;
typedef  enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  MAX6621_CONFIG2_REG ; 
 int MAX6621_TEMP_ALERT_CHAN_SHIFT ; 
 int /*<<< orphan*/  MAX6621_TEMP_INPUT_MAX ; 
 int /*<<< orphan*/  MAX6621_TEMP_INPUT_MIN ; 
 long FUNC0 (long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct max6621_data* FUNC1 (struct device*) ; 
#define  hwmon_temp 130 
#define  hwmon_temp_crit 129 
#define  hwmon_temp_offset 128 
 int /*<<< orphan*/ * max6621_temp_alert_chan2reg ; 
 long FUNC2 (long) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 

__attribute__((used)) static int
FUNC4(struct device *dev, enum hwmon_sensor_types type, u32 attr,
	      int channel, long val)
{
	struct max6621_data *data = FUNC1(dev);
	u32 reg;

	switch (type) {
	case hwmon_temp:
		switch (attr) {
		case hwmon_temp_offset:
			/* Clamp to allowed range to prevent overflow. */
			val = FUNC0(val, MAX6621_TEMP_INPUT_MIN,
					MAX6621_TEMP_INPUT_MAX);
			val = FUNC2(val);

			return FUNC3(data->regmap,
					    MAX6621_CONFIG2_REG, val);
		case hwmon_temp_crit:
			channel -= MAX6621_TEMP_ALERT_CHAN_SHIFT;
			reg = max6621_temp_alert_chan2reg[channel];
			/* Clamp to allowed range to prevent overflow. */
			val = FUNC0(val, MAX6621_TEMP_INPUT_MIN,
					MAX6621_TEMP_INPUT_MAX);
			val = val / 1000L;

			return FUNC3(data->regmap, reg, val);
		default:
			return -EOPNOTSUPP;
		}
		break;

	default:
		return -EOPNOTSUPP;
	}

	return -EOPNOTSUPP;
}