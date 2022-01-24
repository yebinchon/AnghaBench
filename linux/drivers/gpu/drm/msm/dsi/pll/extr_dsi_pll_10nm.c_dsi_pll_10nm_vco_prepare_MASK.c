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
struct dsi_pll_10nm {scalar_t__ phy_cmn_mmio; struct dsi_pll_10nm* slave; int /*<<< orphan*/  id; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ REG_DSI_10nm_PHY_CMN_PLL_CNTRL ; 
 scalar_t__ REG_DSI_10nm_PHY_CMN_RBUF_CTRL ; 
 int FUNC0 (struct dsi_pll_10nm*) ; 
 int /*<<< orphan*/  FUNC1 (struct dsi_pll_10nm*) ; 
 int /*<<< orphan*/  FUNC2 (struct dsi_pll_10nm*) ; 
 struct msm_dsi_pll* FUNC3 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 struct dsi_pll_10nm* FUNC6 (struct msm_dsi_pll*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct clk_hw *hw)
{
	struct msm_dsi_pll *pll = FUNC3(hw);
	struct dsi_pll_10nm *pll_10nm = FUNC6(pll);
	int rc;

	FUNC2(pll_10nm);
	if (pll_10nm->slave)
		FUNC2(pll_10nm->slave);

	/* Start PLL */
	FUNC4(pll_10nm->phy_cmn_mmio + REG_DSI_10nm_PHY_CMN_PLL_CNTRL,
		  0x01);

	/*
	 * ensure all PLL configurations are written prior to checking
	 * for PLL lock.
	 */
	FUNC7();

	/* Check for PLL lock */
	rc = FUNC0(pll_10nm);
	if (rc) {
		FUNC5("PLL(%d) lock failed\n", pll_10nm->id);
		goto error;
	}

	pll->pll_on = true;

	FUNC1(pll_10nm);
	if (pll_10nm->slave)
		FUNC1(pll_10nm->slave);

	FUNC4(pll_10nm->phy_cmn_mmio + REG_DSI_10nm_PHY_CMN_RBUF_CTRL,
		  0x01);
	if (pll_10nm->slave)
		FUNC4(pll_10nm->slave->phy_cmn_mmio +
			  REG_DSI_10nm_PHY_CMN_RBUF_CTRL, 0x01);

error:
	return rc;
}