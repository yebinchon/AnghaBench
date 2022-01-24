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
struct msm_dsi_pll {int dummy; } ;
struct dsi_pll_28nm {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLL_MAX_READS ; 
 int /*<<< orphan*/  POLL_TIMEOUT_US ; 
 struct msm_dsi_pll* FUNC0 (struct clk_hw*) ; 
 int FUNC1 (struct dsi_pll_28nm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dsi_pll_28nm* FUNC2 (struct msm_dsi_pll*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw)
{
	struct msm_dsi_pll *pll = FUNC0(hw);
	struct dsi_pll_28nm *pll_28nm = FUNC2(pll);

	return FUNC1(pll_28nm, POLL_MAX_READS,
					POLL_TIMEOUT_US);
}