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
typedef  int u64 ;
typedef  int u16 ;
struct nct6775_data {int valid; int in_num; int have_in; int** in; int has_fan; int has_fan_min; int* fan_min; int* fan_pulses; int* FAN_PULSE_SHIFT; int have_temp; int have_temp_fixed; int* temp_offset; int alarms; int beeps; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; scalar_t__* REG_BEEP; scalar_t__* REG_ALARM; scalar_t__* REG_TEMP_OFFSET; scalar_t__** reg_temp; int /*<<< orphan*/ ** temp; scalar_t__* REG_FAN_PULSES; scalar_t__* REG_FAN_MIN; int /*<<< orphan*/ * fan_div; scalar_t__* (* fan_from_reg ) (int,int /*<<< orphan*/ ) ;scalar_t__** rpm; scalar_t__* REG_FAN; scalar_t__** REG_IN_MINMAX; scalar_t__* REG_VIN; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__**) ; 
 int FUNC1 (int) ; 
 int HZ ; 
 int NUM_REG_ALARM ; 
 int NUM_REG_BEEP ; 
 int NUM_TEMP ; 
 int NUM_TEMP_FIXED ; 
 struct nct6775_data* FUNC2 (struct device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nct6775_data*,scalar_t__) ; 
 int FUNC6 (struct nct6775_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct nct6775_data*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nct6775_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 scalar_t__* FUNC11 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct nct6775_data *FUNC13(struct device *dev)
{
	struct nct6775_data *data = FUNC2(dev);
	int i, j;

	FUNC3(&data->update_lock);

	if (FUNC12(jiffies, data->last_updated + HZ + HZ / 2)
	    || !data->valid) {
		/* Fan clock dividers */
		FUNC8(data);

		/* Measured voltages and limits */
		for (i = 0; i < data->in_num; i++) {
			if (!(data->have_in & FUNC1(i)))
				continue;

			data->in[i][0] = FUNC6(data,
							    data->REG_VIN[i]);
			data->in[i][1] = FUNC6(data,
					  data->REG_IN_MINMAX[0][i]);
			data->in[i][2] = FUNC6(data,
					  data->REG_IN_MINMAX[1][i]);
		}

		/* Measured fan speeds and limits */
		for (i = 0; i < FUNC0(data->rpm); i++) {
			u16 reg;

			if (!(data->has_fan & FUNC1(i)))
				continue;

			reg = FUNC6(data, data->REG_FAN[i]);
			data->rpm[i] = data->fan_from_reg(reg,
							  data->fan_div[i]);

			if (data->has_fan_min & FUNC1(i))
				data->fan_min[i] = FUNC6(data,
					   data->REG_FAN_MIN[i]);

			if (data->REG_FAN_PULSES[i]) {
				data->fan_pulses[i] =
				  (FUNC6(data,
						      data->REG_FAN_PULSES[i])
				   >> data->FAN_PULSE_SHIFT[i]) & 0x03;
			}

			FUNC7(dev, data, i, reg);
		}

		FUNC9(dev);
		FUNC10(dev);

		/* Measured temperatures and limits */
		for (i = 0; i < NUM_TEMP; i++) {
			if (!(data->have_temp & FUNC1(i)))
				continue;
			for (j = 0; j < FUNC0(data->reg_temp); j++) {
				if (data->reg_temp[j][i])
					data->temp[j][i]
					  = FUNC5(data,
						data->reg_temp[j][i]);
			}
			if (i >= NUM_TEMP_FIXED ||
			    !(data->have_temp_fixed & FUNC1(i)))
				continue;
			data->temp_offset[i]
			  = FUNC6(data, data->REG_TEMP_OFFSET[i]);
		}

		data->alarms = 0;
		for (i = 0; i < NUM_REG_ALARM; i++) {
			u8 alarm;

			if (!data->REG_ALARM[i])
				continue;
			alarm = FUNC6(data, data->REG_ALARM[i]);
			data->alarms |= ((u64)alarm) << (i << 3);
		}

		data->beeps = 0;
		for (i = 0; i < NUM_REG_BEEP; i++) {
			u8 beep;

			if (!data->REG_BEEP[i])
				continue;
			beep = FUNC6(data, data->REG_BEEP[i]);
			data->beeps |= ((u64)beep) << (i << 3);
		}

		data->last_updated = jiffies;
		data->valid = true;
	}

	FUNC4(&data->update_lock);
	return data;
}