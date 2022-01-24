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
struct it87_data {int valid; int has_in; int** in; int has_fan; int** fan; int has_temp; int** temp; int* fan_div; int alarms; int beeps; int fan_main_ctrl; int fan_ctl; int has_pwm; int sensor; int extra; scalar_t__ type; int vid; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int HZ ; 
 int /*<<< orphan*/  IT87_REG_ALARM1 ; 
 int /*<<< orphan*/  IT87_REG_ALARM2 ; 
 int /*<<< orphan*/  IT87_REG_ALARM3 ; 
 int /*<<< orphan*/  IT87_REG_BEEP_ENABLE ; 
 int /*<<< orphan*/  IT87_REG_CONFIG ; 
 int /*<<< orphan*/ * IT87_REG_FAN ; 
 int /*<<< orphan*/ * IT87_REG_FANX ; 
 int /*<<< orphan*/ * IT87_REG_FANX_MIN ; 
 int /*<<< orphan*/  IT87_REG_FAN_CTL ; 
 int /*<<< orphan*/  IT87_REG_FAN_DIV ; 
 int /*<<< orphan*/  IT87_REG_FAN_MAIN_CTRL ; 
 int /*<<< orphan*/ * IT87_REG_FAN_MIN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  IT87_REG_TEMP_ENABLE ; 
 int /*<<< orphan*/  IT87_REG_TEMP_EXTRA ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * IT87_REG_TEMP_OFFSET ; 
 int /*<<< orphan*/  IT87_REG_VID ; 
 int /*<<< orphan*/ * IT87_REG_VIN ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int NUM_FAN ; 
 int NUM_PWM ; 
 int NUM_TEMP ; 
 int NUM_TEMP_LIMIT ; 
 int NUM_TEMP_OFFSET ; 
 int NUM_VIN ; 
 int NUM_VIN_LIMIT ; 
 struct it87_data* FUNC6 (struct device*) ; 
 scalar_t__ FUNC7 (struct it87_data*) ; 
 scalar_t__ FUNC8 (struct it87_data*) ; 
 scalar_t__ it8712 ; 
 scalar_t__ it8716 ; 
 int FUNC9 (struct it87_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct it87_data*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct it87_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__) ; 
 scalar_t__ update_vbat ; 

__attribute__((used)) static struct it87_data *FUNC15(struct device *dev)
{
	struct it87_data *data = FUNC6(dev);
	int i;

	FUNC12(&data->update_lock);

	if (FUNC14(jiffies, data->last_updated + HZ + HZ / 2) ||
	    !data->valid) {
		if (update_vbat) {
			/*
			 * Cleared after each update, so reenable.  Value
			 * returned by this read will be previous value
			 */
			FUNC11(data, IT87_REG_CONFIG,
				FUNC9(data, IT87_REG_CONFIG) | 0x40);
		}
		for (i = 0; i < NUM_VIN; i++) {
			if (!(data->has_in & FUNC0(i)))
				continue;

			data->in[i][0] =
				FUNC9(data, IT87_REG_VIN[i]);

			/* VBAT and AVCC don't have limit registers */
			if (i >= NUM_VIN_LIMIT)
				continue;

			data->in[i][1] =
				FUNC9(data, FUNC5(i));
			data->in[i][2] =
				FUNC9(data, FUNC4(i));
		}

		for (i = 0; i < NUM_FAN; i++) {
			/* Skip disabled fans */
			if (!(data->has_fan & FUNC0(i)))
				continue;

			data->fan[i][1] =
				FUNC9(data, IT87_REG_FAN_MIN[i]);
			data->fan[i][0] = FUNC9(data,
				       IT87_REG_FAN[i]);
			/* Add high byte if in 16-bit mode */
			if (FUNC7(data)) {
				data->fan[i][0] |= FUNC9(data,
						IT87_REG_FANX[i]) << 8;
				data->fan[i][1] |= FUNC9(data,
						IT87_REG_FANX_MIN[i]) << 8;
			}
		}
		for (i = 0; i < NUM_TEMP; i++) {
			if (!(data->has_temp & FUNC0(i)))
				continue;
			data->temp[i][0] =
				FUNC9(data, FUNC1(i));

			if (FUNC8(data) && i < NUM_TEMP_OFFSET)
				data->temp[i][3] =
				  FUNC9(data,
						  IT87_REG_TEMP_OFFSET[i]);

			if (i >= NUM_TEMP_LIMIT)
				continue;

			data->temp[i][1] =
				FUNC9(data, FUNC3(i));
			data->temp[i][2] =
				FUNC9(data, FUNC2(i));
		}

		/* Newer chips don't have clock dividers */
		if ((data->has_fan & 0x07) && !FUNC7(data)) {
			i = FUNC9(data, IT87_REG_FAN_DIV);
			data->fan_div[0] = i & 0x07;
			data->fan_div[1] = (i >> 3) & 0x07;
			data->fan_div[2] = (i & 0x40) ? 3 : 1;
		}

		data->alarms =
			FUNC9(data, IT87_REG_ALARM1) |
			(FUNC9(data, IT87_REG_ALARM2) << 8) |
			(FUNC9(data, IT87_REG_ALARM3) << 16);
		data->beeps = FUNC9(data, IT87_REG_BEEP_ENABLE);

		data->fan_main_ctrl = FUNC9(data,
				IT87_REG_FAN_MAIN_CTRL);
		data->fan_ctl = FUNC9(data, IT87_REG_FAN_CTL);
		for (i = 0; i < NUM_PWM; i++) {
			if (!(data->has_pwm & FUNC0(i)))
				continue;
			FUNC10(data, i);
		}

		data->sensor = FUNC9(data, IT87_REG_TEMP_ENABLE);
		data->extra = FUNC9(data, IT87_REG_TEMP_EXTRA);
		/*
		 * The IT8705F does not have VID capability.
		 * The IT8718F and later don't use IT87_REG_VID for the
		 * same purpose.
		 */
		if (data->type == it8712 || data->type == it8716) {
			data->vid = FUNC9(data, IT87_REG_VID);
			/*
			 * The older IT8712F revisions had only 5 VID pins,
			 * but we assume it is always safe to read 6 bits.
			 */
			data->vid &= 0x3f;
		}
		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC13(&data->update_lock);

	return data;
}