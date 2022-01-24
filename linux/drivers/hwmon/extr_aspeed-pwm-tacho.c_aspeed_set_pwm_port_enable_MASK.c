#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct regmap {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pwm_en; int /*<<< orphan*/  ctrl_reg; } ;

/* Variables and functions */
 TYPE_1__* pwm_port_params ; 
 int /*<<< orphan*/  FUNC0 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct regmap *regmap, u8 pwm_port,
				       bool enable)
{
	FUNC0(regmap, pwm_port_params[pwm_port].ctrl_reg,
			   pwm_port_params[pwm_port].pwm_en,
			   enable ? pwm_port_params[pwm_port].pwm_en : 0);
}