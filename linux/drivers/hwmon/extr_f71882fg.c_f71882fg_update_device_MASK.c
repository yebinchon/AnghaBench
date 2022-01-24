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
struct f71882fg_data {size_t type; int valid; int temp_start; int* temp_type; int /*<<< orphan*/  update_lock; void* last_updated; void** in; void* in_status; void** fan; void** pwm; void** fan_full_speed; void** fan_target; void* fan_status; int /*<<< orphan*/ * temp; void* temp_diode_open; void* temp_status; void* last_limits; void*** pwm_auto_point_temp; void*** pwm_auto_point_pwm; void** pwm_auto_point_mapping; void** pwm_auto_point_hyst; void* pwm_enable; void* temp_beep; void* fan_beep; void** temp_hyst; void** temp_high; void** temp_ovt; void* in_beep; void* in1_max; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int F71882FG_MAX_INS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  F71882FG_REG_FAN_BEEP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  F71882FG_REG_FAN_STATUS ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  F71882FG_REG_IN1_HIGH ; 
 int /*<<< orphan*/  F71882FG_REG_IN_BEEP ; 
 int /*<<< orphan*/  F71882FG_REG_IN_STATUS ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  F71882FG_REG_PWM_ENABLE ; 
 int /*<<< orphan*/  F71882FG_REG_TEMP_BEEP ; 
 int /*<<< orphan*/  F71882FG_REG_TEMP_DIODE_OPEN ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  F71882FG_REG_TEMP_STATUS ; 
 int /*<<< orphan*/  F71882FG_REG_TEMP_TYPE ; 
 int /*<<< orphan*/  F81866_REG_IN1_HIGH ; 
 int /*<<< orphan*/  F81866_REG_IN_BEEP ; 
 int /*<<< orphan*/  F81866_REG_IN_STATUS ; 
 int HZ ; 
 struct f71882fg_data* FUNC12 (struct device*) ; 
 int f71808a ; 
#define  f71808e 130 
 size_t f71858fg ; 
#define  f71862fg 129 
#define  f71869 128 
 scalar_t__* f71882fg_fan_has_beep ; 
 scalar_t__** f71882fg_has_in ; 
 scalar_t__* f71882fg_has_in1_alarm ; 
 int* f71882fg_nr_fans ; 
 int* f71882fg_nr_temps ; 
 void* FUNC13 (struct f71882fg_data*,int /*<<< orphan*/ ) ; 
 void* FUNC14 (struct f71882fg_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct f71882fg_data*,int) ; 
 scalar_t__* f71882fg_temp_has_beep ; 
 size_t f8000 ; 
 size_t f81866a ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (void*,void*) ; 

__attribute__((used)) static struct f71882fg_data *FUNC19(struct device *dev)
{
	struct f71882fg_data *data = FUNC12(dev);
	int nr_fans = f71882fg_nr_fans[data->type];
	int nr_temps = f71882fg_nr_temps[data->type];
	int nr, reg, point;

	FUNC16(&data->update_lock);

	/* Update once every 60 seconds */
	if (FUNC18(jiffies, data->last_limits + 60 * HZ) ||
			!data->valid) {
		if (f71882fg_has_in1_alarm[data->type]) {
			if (data->type == f81866a) {
				data->in1_max =
					FUNC14(data,
						       F81866_REG_IN1_HIGH);
				data->in_beep =
					FUNC14(data,
						       F81866_REG_IN_BEEP);
			} else {
				data->in1_max =
					FUNC14(data,
						       F71882FG_REG_IN1_HIGH);
				data->in_beep =
					FUNC14(data,
						       F71882FG_REG_IN_BEEP);
			}
		}

		/* Get High & boundary temps*/
		for (nr = data->temp_start; nr < nr_temps + data->temp_start;
									nr++) {
			data->temp_ovt[nr] = FUNC14(data,
						FUNC11(nr));
			data->temp_high[nr] = FUNC14(data,
						FUNC9(nr));
		}

		if (data->type != f8000) {
			data->temp_hyst[0] = FUNC14(data,
						FUNC10(0));
			data->temp_hyst[1] = FUNC14(data,
						FUNC10(1));
		}
		/* All but the f71858fg / f8000 have this register */
		if ((data->type != f71858fg) && (data->type != f8000)) {
			reg  = FUNC14(data, F71882FG_REG_TEMP_TYPE);
			data->temp_type[1] = (reg & 0x02) ? 2 : 4;
			data->temp_type[2] = (reg & 0x04) ? 2 : 4;
			data->temp_type[3] = (reg & 0x08) ? 2 : 4;
		}

		if (f71882fg_fan_has_beep[data->type])
			data->fan_beep = FUNC14(data,
						F71882FG_REG_FAN_BEEP);

		if (f71882fg_temp_has_beep[data->type])
			data->temp_beep = FUNC14(data,
						F71882FG_REG_TEMP_BEEP);

		data->pwm_enable = FUNC14(data,
						  F71882FG_REG_PWM_ENABLE);
		data->pwm_auto_point_hyst[0] =
			FUNC14(data, FUNC2(0));
		data->pwm_auto_point_hyst[1] =
			FUNC14(data, FUNC2(1));

		for (nr = 0; nr < nr_fans; nr++) {
			data->pwm_auto_point_mapping[nr] =
			    FUNC14(data,
					   FUNC5(nr));

			switch (data->type) {
			default:
				for (point = 0; point < 5; point++) {
					data->pwm_auto_point_pwm[nr][point] =
						FUNC14(data,
							FUNC6
							(nr, point));
				}
				for (point = 0; point < 4; point++) {
					data->pwm_auto_point_temp[nr][point] =
						FUNC14(data,
							FUNC7
							(nr, point));
				}
				break;
			case f71808e:
			case f71869:
				data->pwm_auto_point_pwm[nr][0] =
					FUNC14(data,
						FUNC6(nr, 0));
				/* Fall through */
			case f71862fg:
				data->pwm_auto_point_pwm[nr][1] =
					FUNC14(data,
						FUNC6
						(nr, 1));
				data->pwm_auto_point_pwm[nr][4] =
					FUNC14(data,
						FUNC6
						(nr, 4));
				data->pwm_auto_point_temp[nr][0] =
					FUNC14(data,
						FUNC7
						(nr, 0));
				data->pwm_auto_point_temp[nr][3] =
					FUNC14(data,
						FUNC7
						(nr, 3));
				break;
			}
		}
		data->last_limits = jiffies;
	}

	/* Update every second */
	if (FUNC18(jiffies, data->last_updated + HZ) || !data->valid) {
		data->temp_status = FUNC14(data,
						F71882FG_REG_TEMP_STATUS);
		data->temp_diode_open = FUNC14(data,
						F71882FG_REG_TEMP_DIODE_OPEN);
		for (nr = data->temp_start; nr < nr_temps + data->temp_start;
									nr++)
			data->temp[nr] = FUNC15(data, nr);

		data->fan_status = FUNC14(data,
						F71882FG_REG_FAN_STATUS);
		for (nr = 0; nr < nr_fans; nr++) {
			data->fan[nr] = FUNC13(data,
						FUNC0(nr));
			data->fan_target[nr] =
			    FUNC13(data, FUNC3(nr));
			data->fan_full_speed[nr] =
			    FUNC13(data,
					    FUNC1(nr));
			data->pwm[nr] =
			    FUNC14(data, FUNC8(nr));
		}
		/* Some models have 1 more fan with limited capabilities */
		if (data->type == f71808a) {
			data->fan[2] = FUNC13(data,
						FUNC0(2));
			data->pwm[2] = FUNC14(data,
							FUNC8(2));
		}
		if (data->type == f8000)
			data->fan[3] = FUNC13(data,
						FUNC0(3));

		if (f71882fg_has_in1_alarm[data->type]) {
			if (data->type == f81866a)
				data->in_status = FUNC14(data,
						F81866_REG_IN_STATUS);

			else
				data->in_status = FUNC14(data,
						F71882FG_REG_IN_STATUS);
		}

		for (nr = 0; nr < F71882FG_MAX_INS; nr++)
			if (f71882fg_has_in[data->type][nr])
				data->in[nr] = FUNC14(data,
							FUNC4(nr));

		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC17(&data->update_lock);

	return data;
}