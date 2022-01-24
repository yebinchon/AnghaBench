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
struct w83627hf_data {scalar_t__ type; int valid; int* in; int* in_min; int* in_max; int* fan; int* fan_min; int* pwm; int* pwm_freq; int* pwm_enable; int* temp; int* temp_max; int* temp_max_hyst; int alarms; int beep_mask; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  W83627HF_REG_PWM_FREQ ; 
 int* W83627THF_PWM_ENABLE_SHIFT ; 
 int /*<<< orphan*/ * W83627THF_REG_PWM_ENABLE ; 
 int /*<<< orphan*/ * W83637HF_REG_PWM_FREQ ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  W83781D_REG_ALARM1 ; 
 int /*<<< orphan*/  W83781D_REG_ALARM2 ; 
 int /*<<< orphan*/  W83781D_REG_ALARM3 ; 
 int /*<<< orphan*/  W83781D_REG_BEEP_INTS1 ; 
 int /*<<< orphan*/  W83781D_REG_BEEP_INTS2 ; 
 int /*<<< orphan*/  W83781D_REG_BEEP_INTS3 ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct w83627hf_data* FUNC6 (struct device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 scalar_t__ w83627hf ; 
 int FUNC10 (struct w83627hf_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * w83627hf_reg_temp ; 
 int /*<<< orphan*/ * w83627hf_reg_temp_hyst ; 
 int /*<<< orphan*/ * w83627hf_reg_temp_over ; 
 int /*<<< orphan*/  FUNC11 (struct w83627hf_data*) ; 
 scalar_t__ w83627thf ; 
 scalar_t__ w83697hf ; 

__attribute__((used)) static struct w83627hf_data *FUNC12(struct device *dev)
{
	struct w83627hf_data *data = FUNC6(dev);
	int i, num_temps = (data->type == w83697hf) ? 2 : 3;
	int num_pwms = (data->type == w83697hf) ? 2 : 3;

	FUNC7(&data->update_lock);

	if (FUNC9(jiffies, data->last_updated + HZ + HZ / 2)
	    || !data->valid) {
		for (i = 0; i <= 8; i++) {
			/* skip missing sensors */
			if (((data->type == w83697hf) && (i == 1)) ||
			    ((data->type != w83627hf && data->type != w83697hf)
			    && (i == 5 || i == 6)))
				continue;
			data->in[i] =
			    FUNC10(data, FUNC3(i));
			data->in_min[i] =
			    FUNC10(data,
					       FUNC5(i));
			data->in_max[i] =
			    FUNC10(data,
					       FUNC4(i));
		}
		for (i = 0; i <= 2; i++) {
			data->fan[i] =
			    FUNC10(data, FUNC0(i));
			data->fan_min[i] =
			    FUNC10(data,
					       FUNC1(i));
		}
		for (i = 0; i <= 2; i++) {
			u8 tmp = FUNC10(data,
				FUNC2(data->type, i));
 			/* bits 0-3 are reserved  in 627THF */
 			if (data->type == w83627thf)
				tmp &= 0xf0;
			data->pwm[i] = tmp;
			if (i == 1 &&
			    (data->type == w83627hf || data->type == w83697hf))
				break;
		}
		if (data->type == w83627hf) {
				u8 tmp = FUNC10(data,
						W83627HF_REG_PWM_FREQ);
				data->pwm_freq[0] = tmp & 0x07;
				data->pwm_freq[1] = (tmp >> 4) & 0x07;
		} else if (data->type != w83627thf) {
			for (i = 1; i <= 3; i++) {
				data->pwm_freq[i - 1] =
					FUNC10(data,
						W83637HF_REG_PWM_FREQ[i - 1]);
				if (i == 2 && (data->type == w83697hf))
					break;
			}
		}
		if (data->type != w83627hf) {
			for (i = 0; i < num_pwms; i++) {
				u8 tmp = FUNC10(data,
					W83627THF_REG_PWM_ENABLE[i]);
				data->pwm_enable[i] =
					((tmp >> W83627THF_PWM_ENABLE_SHIFT[i])
					& 0x03) + 1;
			}
		}
		for (i = 0; i < num_temps; i++) {
			data->temp[i] = FUNC10(
						data, w83627hf_reg_temp[i]);
			data->temp_max[i] = FUNC10(
						data, w83627hf_reg_temp_over[i]);
			data->temp_max_hyst[i] = FUNC10(
						data, w83627hf_reg_temp_hyst[i]);
		}

		FUNC11(data);

		data->alarms =
		    FUNC10(data, W83781D_REG_ALARM1) |
		    (FUNC10(data, W83781D_REG_ALARM2) << 8) |
		    (FUNC10(data, W83781D_REG_ALARM3) << 16);
		i = FUNC10(data, W83781D_REG_BEEP_INTS2);
		data->beep_mask = (i << 8) |
		    FUNC10(data, W83781D_REG_BEEP_INTS1) |
		    FUNC10(data, W83781D_REG_BEEP_INTS3) << 16;
		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC8(&data->update_lock);

	return data;
}