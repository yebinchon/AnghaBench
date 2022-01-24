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
struct ti_lmu_bank {scalar_t__ ramp_up_usec; scalar_t__ ramp_down_usec; int /*<<< orphan*/  runtime_ramp_reg; struct regmap* regmap; } ;
struct regmap {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct regmap*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (scalar_t__) ; 

int FUNC2(struct ti_lmu_bank *lmu_bank)
{
	struct regmap *regmap = lmu_bank->regmap;
	u8 ramp, ramp_up, ramp_down;

	if (lmu_bank->ramp_up_usec == 0 && lmu_bank->ramp_down_usec == 0) {
		ramp_up = 0;
		ramp_down = 0;
	} else {
		ramp_up = FUNC1(lmu_bank->ramp_up_usec);
		ramp_down = FUNC1(lmu_bank->ramp_down_usec);
	}

	ramp = (ramp_up << 4) | ramp_down;

	return FUNC0(regmap, lmu_bank->runtime_ramp_reg, ramp);

}