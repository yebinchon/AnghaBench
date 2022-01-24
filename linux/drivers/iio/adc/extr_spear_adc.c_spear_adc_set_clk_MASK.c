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
struct spear_adc_state {int current_clk; TYPE_1__* adc_base_spear6xx; int /*<<< orphan*/  clk; } ;
struct TYPE_2__ {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct spear_adc_state *st, u32 val)
{
	u32 clk_high, clk_low, count;
	u32 apb_clk = FUNC4(st->clk);

	count = FUNC0(apb_clk, val);
	clk_low = count / 2;
	clk_high = count - clk_low;
	st->current_clk = apb_clk / count;

	FUNC3(FUNC2(clk_low) | FUNC1(clk_high),
		     &st->adc_base_spear6xx->clk);
}