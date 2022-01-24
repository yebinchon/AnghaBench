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
struct jc42_data {int* temp; int config; int /*<<< orphan*/  update_lock; struct i2c_client* client; int /*<<< orphan*/  extended; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
typedef  enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int JC42_CFG_HYST_MASK ; 
 int JC42_CFG_HYST_SHIFT ; 
 int /*<<< orphan*/  JC42_REG_CONFIG ; 
 int /*<<< orphan*/  JC42_TEMP_MAX ; 
 int /*<<< orphan*/  JC42_TEMP_MIN ; 
 int /*<<< orphan*/  JC42_TEMP_MIN_EXTENDED ; 
 long FUNC0 (long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct jc42_data* FUNC1 (struct device*) ; 
#define  hwmon_temp_crit 131 
#define  hwmon_temp_crit_hyst 130 
#define  hwmon_temp_max 129 
#define  hwmon_temp_min 128 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 void* FUNC4 (long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 size_t t_crit ; 
 size_t t_max ; 
 size_t t_min ; 
 int /*<<< orphan*/ * temp_regs ; 

__attribute__((used)) static int FUNC7(struct device *dev, enum hwmon_sensor_types type,
		      u32 attr, int channel, long val)
{
	struct jc42_data *data = FUNC1(dev);
	struct i2c_client *client = data->client;
	int diff, hyst;
	int ret;

	FUNC5(&data->update_lock);

	switch (attr) {
	case hwmon_temp_min:
		data->temp[t_min] = FUNC4(val, data->extended);
		ret = FUNC2(client, temp_regs[t_min],
						   data->temp[t_min]);
		break;
	case hwmon_temp_max:
		data->temp[t_max] = FUNC4(val, data->extended);
		ret = FUNC2(client, temp_regs[t_max],
						   data->temp[t_max]);
		break;
	case hwmon_temp_crit:
		data->temp[t_crit] = FUNC4(val, data->extended);
		ret = FUNC2(client, temp_regs[t_crit],
						   data->temp[t_crit]);
		break;
	case hwmon_temp_crit_hyst:
		/*
		 * JC42.4 compliant chips only support four hysteresis values.
		 * Pick best choice and go from there.
		 */
		val = FUNC0(val, (data->extended ? JC42_TEMP_MIN_EXTENDED
						     : JC42_TEMP_MIN) - 6000,
				JC42_TEMP_MAX);
		diff = FUNC3(data->temp[t_crit]) - val;
		hyst = 0;
		if (diff > 0) {
			if (diff < 2250)
				hyst = 1;	/* 1.5 degrees C */
			else if (diff < 4500)
				hyst = 2;	/* 3.0 degrees C */
			else
				hyst = 3;	/* 6.0 degrees C */
		}
		data->config = (data->config & ~JC42_CFG_HYST_MASK) |
				(hyst << JC42_CFG_HYST_SHIFT);
		ret = FUNC2(data->client,
						   JC42_REG_CONFIG,
						   data->config);
		break;
	default:
		ret = -EOPNOTSUPP;
		break;
	}

	FUNC6(&data->update_lock);

	return ret;
}