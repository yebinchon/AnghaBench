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
struct msm_dsi_pll {unsigned long min_rate; unsigned long max_rate; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 struct msm_dsi_pll* FUNC0 (struct clk_hw*) ; 

long FUNC1(struct clk_hw *hw,
		unsigned long rate, unsigned long *parent_rate)
{
	struct msm_dsi_pll *pll = FUNC0(hw);

	if      (rate < pll->min_rate)
		return  pll->min_rate;
	else if (rate > pll->max_rate)
		return  pll->max_rate;
	else
		return rate;
}