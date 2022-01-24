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
typedef  size_t u8 ;
typedef  int u16 ;
struct aspeed_pwm_tacho_data {int* type_pwm_clock_unit; size_t* pwm_port_type; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 size_t PWM_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t,int) ; 

__attribute__((used)) static void FUNC2(struct aspeed_pwm_tacho_data *priv,
					 u8 index, u8 fan_ctrl)
{
	u16 period, dc_time_on;

	period = priv->type_pwm_clock_unit[priv->pwm_port_type[index]];
	period += 1;
	dc_time_on = (fan_ctrl * period) / PWM_MAX;

	if (dc_time_on == 0) {
		FUNC1(priv->regmap, index, false);
	} else {
		if (dc_time_on == period)
			dc_time_on = 0;

		FUNC0(priv->regmap, index, 0,
							dc_time_on);
		FUNC1(priv->regmap, index, true);
	}
}