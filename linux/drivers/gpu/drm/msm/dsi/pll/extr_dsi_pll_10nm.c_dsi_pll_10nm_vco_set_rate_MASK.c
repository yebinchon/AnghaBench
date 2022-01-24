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
struct dsi_pll_10nm {unsigned long vco_current_rate; int /*<<< orphan*/  vco_ref_clk_rate; int /*<<< orphan*/  id; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  VCO_REF_CLK_RATE ; 
 int /*<<< orphan*/  FUNC1 (struct dsi_pll_10nm*) ; 
 int /*<<< orphan*/  FUNC2 (struct dsi_pll_10nm*) ; 
 int /*<<< orphan*/  FUNC3 (struct dsi_pll_10nm*) ; 
 int /*<<< orphan*/  FUNC4 (struct dsi_pll_10nm*) ; 
 int /*<<< orphan*/  FUNC5 (struct dsi_pll_10nm*) ; 
 int /*<<< orphan*/  FUNC6 (struct dsi_pll_10nm*) ; 
 struct msm_dsi_pll* FUNC7 (struct clk_hw*) ; 
 struct dsi_pll_10nm* FUNC8 (struct msm_dsi_pll*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct clk_hw *hw, unsigned long rate,
				     unsigned long parent_rate)
{
	struct msm_dsi_pll *pll = FUNC7(hw);
	struct dsi_pll_10nm *pll_10nm = FUNC8(pll);

	FUNC0("DSI PLL%d rate=%lu, parent's=%lu", pll_10nm->id, rate,
	    parent_rate);

	pll_10nm->vco_current_rate = rate;
	pll_10nm->vco_ref_clk_rate = VCO_REF_CLK_RATE;

	FUNC5(pll_10nm);

	FUNC1(pll_10nm);

	FUNC2(pll_10nm);

	FUNC3(pll_10nm);

	FUNC4(pll_10nm);

	FUNC6(pll_10nm);

	/* flush, ensure all register writes are done*/
	FUNC9();

	return 0;
}