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
struct dsi_pll_output {int /*<<< orphan*/  pll_postdiv; } ;
struct dsi_pll_input {scalar_t__ ssc_en; } ;
struct dsi_pll_14nm {unsigned long vco_current_rate; scalar_t__ uc; struct dsi_pll_14nm* slave; int /*<<< orphan*/  vco_ref_clk_rate; int /*<<< orphan*/  id; struct dsi_pll_output out; struct dsi_pll_input in; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  DSI_PLL_DEFAULT_VCO_POSTDIV ; 
 scalar_t__ MSM_DSI_PHY_MASTER ; 
 int /*<<< orphan*/  VCO_REF_CLK_RATE ; 
 int /*<<< orphan*/  FUNC1 (struct dsi_pll_14nm*) ; 
 struct msm_dsi_pll* FUNC2 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct dsi_pll_14nm*) ; 
 int /*<<< orphan*/  FUNC4 (struct dsi_pll_14nm*) ; 
 int /*<<< orphan*/  FUNC5 (struct dsi_pll_14nm*) ; 
 int /*<<< orphan*/  FUNC6 (struct dsi_pll_14nm*,struct dsi_pll_input*,struct dsi_pll_output*) ; 
 struct dsi_pll_14nm* FUNC7 (struct msm_dsi_pll*) ; 

__attribute__((used)) static int FUNC8(struct clk_hw *hw, unsigned long rate,
				     unsigned long parent_rate)
{
	struct msm_dsi_pll *pll = FUNC2(hw);
	struct dsi_pll_14nm *pll_14nm = FUNC7(pll);
	struct dsi_pll_input *pin = &pll_14nm->in;
	struct dsi_pll_output *pout = &pll_14nm->out;

	FUNC0("DSI PLL%d rate=%lu, parent's=%lu", pll_14nm->id, rate,
	    parent_rate);

	pll_14nm->vco_current_rate = rate;
	pll_14nm->vco_ref_clk_rate = VCO_REF_CLK_RATE;

	FUNC1(pll_14nm);

	/*
	 * This configures the post divider internal to the VCO. It's
	 * fixed to divide by 1 for now.
	 *
	 * tx_band = pll_postdiv.
	 * 0: divided by 1
	 * 1: divided by 2
	 * 2: divided by 4
	 * 3: divided by 8
	 */
	pout->pll_postdiv = DSI_PLL_DEFAULT_VCO_POSTDIV;

	FUNC4(pll_14nm);

	if (pin->ssc_en)
		FUNC5(pll_14nm);

	FUNC3(pll_14nm);

	/* commit the slave DSI PLL registers if we're master. Note that we
	 * don't lock the slave PLL. We just ensure that the PLL/PHY registers
	 * of the master and slave are identical
	 */
	if (pll_14nm->uc == MSM_DSI_PHY_MASTER) {
		struct dsi_pll_14nm *pll_14nm_slave = pll_14nm->slave;

		FUNC6(pll_14nm_slave, pin, pout);
	}

	FUNC6(pll_14nm, pin, pout);

	return 0;
}