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
struct spear_adc_state {int /*<<< orphan*/  sampling_freq; TYPE_1__* adc_base_spear6xx; } ;
struct TYPE_2__ {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct spear_adc_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct spear_adc_state*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct spear_adc_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct spear_adc_state*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct spear_adc_state *st)
{
	int i;

	/* Reset ADC core */
	FUNC4(st, 0);
	FUNC0(0, &st->adc_base_spear6xx->clk);
	for (i = 0; i < 8; i++)
		FUNC2(st, i, 0);
	FUNC3(st, 0);

	FUNC1(st, st->sampling_freq);

	return 0;
}