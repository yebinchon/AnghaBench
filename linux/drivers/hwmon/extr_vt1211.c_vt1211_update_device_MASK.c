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
struct vt1211_data {int valid; int vid; int* in; int* in_min; int* in_max; int* temp; int* temp_max; int* temp_hyst; int* fan; int* fan_min; int* pwm; int* fan_div; int fan_ctl; int* pwm_ctl; int pwm_clk; int** pwm_auto_pwm; int* pwm_auto_temp; int alarms; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; int /*<<< orphan*/  uch_config; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 scalar_t__ HZ ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VT1211_REG_ALARM1 ; 
 int /*<<< orphan*/  VT1211_REG_ALARM2 ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  VT1211_REG_FAN_DIV ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  VT1211_REG_PWM_CLK ; 
 int /*<<< orphan*/  VT1211_REG_PWM_CTL ; 
 int /*<<< orphan*/  VT1211_REG_VID ; 
 struct vt1211_data* FUNC11 (struct device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * regtemp ; 
 int /*<<< orphan*/ * regtemphyst ; 
 int /*<<< orphan*/ * regtempmax ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__) ; 
 int FUNC15 (struct vt1211_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct vt1211_data *FUNC16(struct device *dev)
{
	struct vt1211_data *data = FUNC11(dev);
	int ix, val;

	FUNC12(&data->update_lock);

	/* registers cache is refreshed after 1 second */
	if (FUNC14(jiffies, data->last_updated + HZ) || !data->valid) {
		/* read VID */
		data->vid = FUNC15(data, VT1211_REG_VID) & 0x1f;

		/* voltage (in) registers */
		for (ix = 0; ix < FUNC0(data->in); ix++) {
			if (FUNC2(ix, data->uch_config)) {
				data->in[ix] = FUNC15(data,
						FUNC5(ix));
				data->in_min[ix] = FUNC15(data,
						FUNC7(ix));
				data->in_max[ix] = FUNC15(data,
						FUNC6(ix));
			}
		}

		/* temp registers */
		for (ix = 0; ix < FUNC0(data->temp); ix++) {
			if (FUNC1(ix, data->uch_config)) {
				data->temp[ix] = FUNC15(data,
						regtemp[ix]);
				data->temp_max[ix] = FUNC15(data,
						regtempmax[ix]);
				data->temp_hyst[ix] = FUNC15(data,
						regtemphyst[ix]);
			}
		}

		/* fan & pwm registers */
		for (ix = 0; ix < FUNC0(data->fan); ix++) {
			data->fan[ix] = FUNC15(data,
						FUNC3(ix));
			data->fan_min[ix] = FUNC15(data,
						FUNC4(ix));
			data->pwm[ix] = FUNC15(data,
						FUNC8(ix));
		}
		val = FUNC15(data, VT1211_REG_FAN_DIV);
		data->fan_div[0] = (val >> 4) & 3;
		data->fan_div[1] = (val >> 6) & 3;
		data->fan_ctl = val & 0xf;

		val = FUNC15(data, VT1211_REG_PWM_CTL);
		data->pwm_ctl[0] = val & 0xf;
		data->pwm_ctl[1] = (val >> 4) & 0xf;

		data->pwm_clk = FUNC15(data, VT1211_REG_PWM_CLK);

		/* pwm & temp auto point registers */
		data->pwm_auto_pwm[0][1] = FUNC15(data,
						FUNC9(0, 1));
		data->pwm_auto_pwm[0][2] = FUNC15(data,
						FUNC9(0, 2));
		data->pwm_auto_pwm[1][1] = FUNC15(data,
						FUNC9(1, 1));
		data->pwm_auto_pwm[1][2] = FUNC15(data,
						FUNC9(1, 2));
		for (ix = 0; ix < FUNC0(data->pwm_auto_temp); ix++) {
			data->pwm_auto_temp[ix] = FUNC15(data,
						FUNC10(ix));
		}

		/* alarm registers */
		data->alarms = (FUNC15(data, VT1211_REG_ALARM2) << 8) |
				FUNC15(data, VT1211_REG_ALARM1);

		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC13(&data->update_lock);

	return data;
}