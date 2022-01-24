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
struct aspeed_pwm_tacho_data {int /*<<< orphan*/  regmap; int /*<<< orphan*/ * type_fan_tach_mode; int /*<<< orphan*/ * type_fan_tach_unit; int /*<<< orphan*/ * type_fan_tach_clock_division; int /*<<< orphan*/ * type_pwm_clock_unit; int /*<<< orphan*/ * type_pwm_clock_division_l; int /*<<< orphan*/ * type_pwm_clock_division_h; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_PWM_DIV_H ; 
 int /*<<< orphan*/  M_PWM_DIV_L ; 
 int /*<<< orphan*/  M_PWM_PERIOD ; 
 int /*<<< orphan*/  M_TACH_CLK_DIV ; 
 int /*<<< orphan*/  M_TACH_MODE ; 
 int /*<<< orphan*/  M_TACH_UNIT ; 
 size_t TYPEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct aspeed_pwm_tacho_data *priv)
{
	priv->type_pwm_clock_division_h[TYPEM] = M_PWM_DIV_H;
	priv->type_pwm_clock_division_l[TYPEM] = M_PWM_DIV_L;
	priv->type_pwm_clock_unit[TYPEM] = M_PWM_PERIOD;
	FUNC0(priv->regmap, TYPEM, M_PWM_DIV_H,
				    M_PWM_DIV_L, M_PWM_PERIOD);
	FUNC1(priv->regmap, TYPEM, true);
	priv->type_fan_tach_clock_division[TYPEM] = M_TACH_CLK_DIV;
	priv->type_fan_tach_unit[TYPEM] = M_TACH_UNIT;
	priv->type_fan_tach_mode[TYPEM] = M_TACH_MODE;
	FUNC2(priv->regmap, TYPEM, M_TACH_MODE,
				     M_TACH_UNIT, M_TACH_CLK_DIV);
}