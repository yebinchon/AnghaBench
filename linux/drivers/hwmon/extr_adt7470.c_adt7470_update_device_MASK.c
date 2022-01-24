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
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct adt7470_data {unsigned long sensors_last_updated; int sensors_valid; unsigned long limits_last_updated; int limits_valid; int* temp; int* pwm; int* pwm_automatic; int* pwm_auto_temp; int force_pwm_max; int alarm; int* temp_min; int* temp_max; int* pwm_max; int* pwm_min; int* pwm_tmin; int /*<<< orphan*/  lock; void** fan_max; void** fan_min; void* alarms_mask; void** fan; int /*<<< orphan*/  temperatures_probed; struct i2c_client* client; } ;

/* Variables and functions */
 int ADT7470_FAN_COUNT ; 
 int ADT7470_FSPD_MASK ; 
 int ADT7470_OOL_ALARM ; 
 int ADT7470_PWM1_AUTO_MASK ; 
 int ADT7470_PWM2_AUTO_MASK ; 
 int ADT7470_PWM_COUNT ; 
 int ADT7470_REG_ALARM1 ; 
 int /*<<< orphan*/  ADT7470_REG_ALARM1_MASK ; 
 int ADT7470_REG_ALARM2 ; 
 int ADT7470_REG_CFG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int ADT7470_TEMP_COUNT ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 scalar_t__ LIMIT_REFRESH_INTERVAL ; 
 scalar_t__ SENSOR_REFRESH_INTERVAL ; 
 int /*<<< orphan*/  FUNC13 (struct i2c_client*,struct adt7470_data*) ; 
 void* FUNC14 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct adt7470_data* FUNC15 (struct device*) ; 
 int FUNC16 (struct i2c_client*,int) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (unsigned long,scalar_t__) ; 

__attribute__((used)) static struct adt7470_data *FUNC20(struct device *dev)
{
	struct adt7470_data *data = FUNC15(dev);
	struct i2c_client *client = data->client;
	unsigned long local_jiffies = jiffies;
	u8 cfg;
	int i;
	int need_sensors = 1;
	int need_limits = 1;

	/*
	 * Figure out if we need to update the shadow registers.
	 * Lockless means that we may occasionally report out of
	 * date data.
	 */
	if (FUNC19(local_jiffies, data->sensors_last_updated +
			SENSOR_REFRESH_INTERVAL) &&
	    data->sensors_valid)
		need_sensors = 0;

	if (FUNC19(local_jiffies, data->limits_last_updated +
			LIMIT_REFRESH_INTERVAL) &&
	    data->limits_valid)
		need_limits = 0;

	if (!need_sensors && !need_limits)
		return data;

	FUNC17(&data->lock);
	if (!need_sensors)
		goto no_sensor_update;

	if (!data->temperatures_probed)
		FUNC13(client, data);
	else
		for (i = 0; i < ADT7470_TEMP_COUNT; i++)
			data->temp[i] = FUNC16(client,
						FUNC11(i));

	for (i = 0; i < ADT7470_FAN_COUNT; i++)
		data->fan[i] = FUNC14(client,
						FUNC0(i));

	for (i = 0; i < ADT7470_PWM_COUNT; i++) {
		int reg;
		int reg_mask;

		data->pwm[i] = FUNC16(client,
						FUNC3(i));

		if (i % 2)
			reg_mask = ADT7470_PWM2_AUTO_MASK;
		else
			reg_mask = ADT7470_PWM1_AUTO_MASK;

		reg = FUNC5(i);
		if (FUNC16(client, reg) & reg_mask)
			data->pwm_automatic[i] = 1;
		else
			data->pwm_automatic[i] = 0;

		reg = FUNC4(i);
		cfg = FUNC16(client, reg);
		if (!(i % 2))
			data->pwm_auto_temp[i] = cfg >> 4;
		else
			data->pwm_auto_temp[i] = cfg & 0xF;
	}

	if (FUNC16(client, ADT7470_REG_CFG) &
	    ADT7470_FSPD_MASK)
		data->force_pwm_max = 1;
	else
		data->force_pwm_max = 0;

	data->alarm = FUNC16(client, ADT7470_REG_ALARM1);
	if (data->alarm & ADT7470_OOL_ALARM)
		data->alarm |= FUNC12(FUNC16(client,
							ADT7470_REG_ALARM2));
	data->alarms_mask = FUNC14(client,
						   ADT7470_REG_ALARM1_MASK);

	data->sensors_last_updated = local_jiffies;
	data->sensors_valid = 1;

no_sensor_update:
	if (!need_limits)
		goto out;

	for (i = 0; i < ADT7470_TEMP_COUNT; i++) {
		data->temp_min[i] = FUNC16(client,
						FUNC10(i));
		data->temp_max[i] = FUNC16(client,
						FUNC9(i));
	}

	for (i = 0; i < ADT7470_FAN_COUNT; i++) {
		data->fan_min[i] = FUNC14(client,
						FUNC2(i));
		data->fan_max[i] = FUNC14(client,
						FUNC1(i));
	}

	for (i = 0; i < ADT7470_PWM_COUNT; i++) {
		data->pwm_max[i] = FUNC16(client,
						FUNC6(i));
		data->pwm_min[i] = FUNC16(client,
						FUNC7(i));
		data->pwm_tmin[i] = FUNC16(client,
						FUNC8(i));
	}

	data->limits_last_updated = local_jiffies;
	data->limits_valid = 1;

out:
	FUNC18(&data->lock);
	return data;
}