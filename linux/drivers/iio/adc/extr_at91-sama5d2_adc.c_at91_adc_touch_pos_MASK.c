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
typedef  int u32 ;
typedef  int u16 ;
struct at91_adc_state {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AT91_SAMA5D2_MAX_POS_BITS ; 
 int AT91_SAMA5D2_XYZ_MASK ; 
 int FUNC0 (struct at91_adc_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC3 (struct at91_adc_state*) ; 

__attribute__((used)) static u16 FUNC4(struct at91_adc_state *st, int reg)
{
	u32 val;
	u32 scale, result, pos;

	/*
	 * to obtain the actual position we must divide by scale
	 * and multiply with max, where
	 * max = 2^AT91_SAMA5D2_MAX_POS_BITS - 1
	 */
	/* first half of register is the x or y, second half is the scale */
	val = FUNC0(st, reg);
	if (!val)
		FUNC1(&FUNC3(st)->dev, "pos is 0\n");

	pos = val & AT91_SAMA5D2_XYZ_MASK;
	result = (pos << AT91_SAMA5D2_MAX_POS_BITS) - pos;
	scale = (val >> 16) & AT91_SAMA5D2_XYZ_MASK;
	if (scale == 0) {
		FUNC2(&FUNC3(st)->dev, "scale is 0\n");
		return 0;
	}
	result /= scale;

	return result;
}