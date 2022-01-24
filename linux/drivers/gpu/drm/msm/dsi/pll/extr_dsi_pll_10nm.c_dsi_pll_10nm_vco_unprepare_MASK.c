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
struct msm_dsi_pll {int pll_on; } ;
struct dsi_pll_10nm {struct dsi_pll_10nm* slave; scalar_t__ phy_cmn_mmio; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ REG_DSI_10nm_PHY_CMN_PLL_CNTRL ; 
 int /*<<< orphan*/  FUNC0 (struct dsi_pll_10nm*) ; 
 int /*<<< orphan*/  FUNC1 (struct dsi_pll_10nm*) ; 
 struct msm_dsi_pll* FUNC2 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct dsi_pll_10nm* FUNC4 (struct msm_dsi_pll*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct clk_hw *hw)
{
	struct msm_dsi_pll *pll = FUNC2(hw);
	struct dsi_pll_10nm *pll_10nm = FUNC4(pll);

	/*
	 * To avoid any stray glitches while abruptly powering down the PLL
	 * make sure to gate the clock using the clock enable bit before
	 * powering down the PLL
	 */
	FUNC0(pll_10nm);
	FUNC3(pll_10nm->phy_cmn_mmio + REG_DSI_10nm_PHY_CMN_PLL_CNTRL, 0);
	FUNC1(pll_10nm);
	if (pll_10nm->slave) {
		FUNC0(pll_10nm->slave);
		FUNC1(pll_10nm->slave);
	}
	/* flush, ensure all register writes are done */
	FUNC5();
	pll->pll_on = false;
}