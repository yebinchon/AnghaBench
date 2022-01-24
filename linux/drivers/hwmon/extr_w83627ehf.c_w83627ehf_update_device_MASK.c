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
typedef  int u16 ;
struct w83627ehf_sio_data {scalar_t__ kind; } ;
struct w83627ehf_data {int valid; int in_num; int* in; int* in_min; int* in_max; int has_fan; int* REG_FAN; int* fan_div; int has_fan_min; int* fan_min; int* REG_FAN_MIN; int pwm_num; int* fan_start_output; int* REG_FAN_START_OUTPUT; int* fan_stop_output; int* REG_FAN_STOP_OUTPUT; int* fan_stop_time; int* REG_FAN_STOP_TIME; int* REG_FAN_MAX_OUTPUT; int* fan_max_output; int* REG_FAN_STEP_OUTPUT; int* fan_step_output; int* target_temp; int* REG_TARGET; int* pwm_mode; int have_temp; int have_temp_offset; int* temp_offset; int alarms; int caseopen; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; scalar_t__* reg_temp_hyst; void** temp_max_hyst; scalar_t__* reg_temp_over; void** temp_max; scalar_t__* reg_temp; void** temp; scalar_t__ has_fan_div; int /*<<< orphan*/  (* fan_from_reg ) (int,int) ;int /*<<< orphan*/ * rpm; scalar_t__ in6_skip; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int NUM_REG_TEMP ; 
 int W83627EHF_REG_ALARM1 ; 
 int W83627EHF_REG_ALARM2 ; 
 int W83627EHF_REG_ALARM3 ; 
 int W83627EHF_REG_CASEOPEN_DET ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int* W83627EHF_REG_TEMP_OFFSET ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct w83627ehf_data* FUNC4 (struct device*) ; 
 struct w83627ehf_sio_data* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ nct6775 ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 void* FUNC11 (struct w83627ehf_data*,scalar_t__) ; 
 int FUNC12 (struct w83627ehf_data*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct device*,struct w83627ehf_data*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*,struct w83627ehf_data*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*,struct w83627ehf_data*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct w83627ehf_data*,int,int) ; 

__attribute__((used)) static struct w83627ehf_data *FUNC17(struct device *dev)
{
	struct w83627ehf_data *data = FUNC4(dev);
	struct w83627ehf_sio_data *sio_data = FUNC5(dev);

	int i;

	FUNC7(&data->update_lock);

	if (FUNC10(jiffies, data->last_updated + HZ + HZ/2)
	 || !data->valid) {
		/* Fan clock dividers */
		FUNC13(dev, data);

		/* Measured voltages and limits */
		for (i = 0; i < data->in_num; i++) {
			if ((i == 6) && data->in6_skip)
				continue;

			data->in[i] = FUNC12(data,
				      FUNC0(i));
			data->in_min[i] = FUNC12(data,
					  FUNC2(i));
			data->in_max[i] = FUNC12(data,
					  FUNC1(i));
		}

		/* Measured fan speeds and limits */
		for (i = 0; i < 5; i++) {
			u16 reg;

			if (!(data->has_fan & (1 << i)))
				continue;

			reg = FUNC12(data, data->REG_FAN[i]);
			data->rpm[i] = data->fan_from_reg(reg,
							  data->fan_div[i]);

			if (data->has_fan_min & (1 << i))
				data->fan_min[i] = FUNC12(data,
					   data->REG_FAN_MIN[i]);

			/*
			 * If we failed to measure the fan speed and clock
			 * divider can be increased, let's try that for next
			 * time
			 */
			if (data->has_fan_div
			    && (reg >= 0xff || (sio_data->kind == nct6775
						&& reg == 0x00))
			    && data->fan_div[i] < 0x07) {
				FUNC3(dev,
					"Increasing fan%d clock divider from %u to %u\n",
					i + 1, FUNC6(data->fan_div[i]),
					FUNC6(data->fan_div[i] + 1));
				data->fan_div[i]++;
				FUNC15(dev, data, i);
				/* Preserve min limit if possible */
				if ((data->has_fan_min & (1 << i))
				 && data->fan_min[i] >= 2
				 && data->fan_min[i] != 255)
					FUNC16(data,
						data->REG_FAN_MIN[i],
						(data->fan_min[i] /= 2));
			}
		}

		FUNC14(dev, data);

		for (i = 0; i < data->pwm_num; i++) {
			if (!(data->has_fan & (1 << i)))
				continue;

			data->fan_start_output[i] =
			  FUNC12(data,
					       data->REG_FAN_START_OUTPUT[i]);
			data->fan_stop_output[i] =
			  FUNC12(data,
					       data->REG_FAN_STOP_OUTPUT[i]);
			data->fan_stop_time[i] =
			  FUNC12(data,
					       data->REG_FAN_STOP_TIME[i]);

			if (data->REG_FAN_MAX_OUTPUT &&
			    data->REG_FAN_MAX_OUTPUT[i] != 0xff)
				data->fan_max_output[i] =
				  FUNC12(data,
						data->REG_FAN_MAX_OUTPUT[i]);

			if (data->REG_FAN_STEP_OUTPUT &&
			    data->REG_FAN_STEP_OUTPUT[i] != 0xff)
				data->fan_step_output[i] =
				  FUNC12(data,
						data->REG_FAN_STEP_OUTPUT[i]);

			data->target_temp[i] =
				FUNC12(data,
					data->REG_TARGET[i]) &
					(data->pwm_mode[i] == 1 ? 0x7f : 0xff);
		}

		/* Measured temperatures and limits */
		for (i = 0; i < NUM_REG_TEMP; i++) {
			if (!(data->have_temp & (1 << i)))
				continue;
			data->temp[i] = FUNC11(data,
						data->reg_temp[i]);
			if (data->reg_temp_over[i])
				data->temp_max[i]
				  = FUNC11(data,
						data->reg_temp_over[i]);
			if (data->reg_temp_hyst[i])
				data->temp_max_hyst[i]
				  = FUNC11(data,
						data->reg_temp_hyst[i]);
			if (i > 2)
				continue;
			if (data->have_temp_offset & (1 << i))
				data->temp_offset[i]
				  = FUNC12(data,
						W83627EHF_REG_TEMP_OFFSET[i]);
		}

		data->alarms = FUNC12(data,
					W83627EHF_REG_ALARM1) |
			       (FUNC12(data,
					W83627EHF_REG_ALARM2) << 8) |
			       (FUNC12(data,
					W83627EHF_REG_ALARM3) << 16);

		data->caseopen = FUNC12(data,
						W83627EHF_REG_CASEOPEN_DET);

		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC8(&data->update_lock);
	return data;
}