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
struct ti_sn_bridge {int /*<<< orphan*/  panel; int /*<<< orphan*/  regmap; int /*<<< orphan*/  aux; TYPE_1__* dsi; } ;
struct drm_bridge {int dummy; } ;
struct TYPE_2__ {scalar_t__ lanes; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__) ; 
 unsigned int CHA_DSI_LANES_MASK ; 
 unsigned int DPPLL_SRC_DP_PLL_LOCK ; 
 int /*<<< orphan*/  DP_ALTERNATE_SCRAMBLER_RESET_ENABLE ; 
 int /*<<< orphan*/  DP_EDP_CONFIGURATION_SET ; 
 unsigned int FUNC1 (scalar_t__) ; 
 unsigned int DP_NUM_LANES_MASK ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 unsigned int ML_TX_MAIN_LINK_OFF ; 
 unsigned int ML_TX_NORMAL_MODE ; 
 int /*<<< orphan*/  SN_DPPLL_SRC_REG ; 
 int /*<<< orphan*/  SN_DSI_LANES_REG ; 
 int /*<<< orphan*/  SN_ENH_FRAME_REG ; 
 int /*<<< orphan*/  SN_ML_TX_MODE_REG ; 
 int /*<<< orphan*/  SN_PLL_ENABLE_REG ; 
 int /*<<< orphan*/  SN_SSC_CONFIG_REG ; 
 unsigned int VSTREAM_ENABLE ; 
 struct ti_sn_bridge* FUNC3 (struct drm_bridge*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ti_sn_bridge*) ; 
 int /*<<< orphan*/  FUNC10 (struct ti_sn_bridge*) ; 

__attribute__((used)) static void FUNC11(struct drm_bridge *bridge)
{
	struct ti_sn_bridge *pdata = FUNC3(bridge);
	unsigned int val;
	int ret;

	/* DSI_A lane config */
	val = FUNC0(4 - pdata->dsi->lanes);
	FUNC7(pdata->regmap, SN_DSI_LANES_REG,
			   CHA_DSI_LANES_MASK, val);

	/* DP lane config */
	val = FUNC1(pdata->dsi->lanes - 1);
	FUNC7(pdata->regmap, SN_SSC_CONFIG_REG, DP_NUM_LANES_MASK,
			   val);

	/* set dsi/dp clk frequency value */
	FUNC9(pdata);

	/* enable DP PLL */
	FUNC8(pdata->regmap, SN_PLL_ENABLE_REG, 1);

	ret = FUNC6(pdata->regmap, SN_DPPLL_SRC_REG, val,
				       val & DPPLL_SRC_DP_PLL_LOCK, 1000,
				       50 * 1000);
	if (ret) {
		FUNC2("DP_PLL_LOCK polling failed (%d)\n", ret);
		return;
	}

	/**
	 * The SN65DSI86 only supports ASSR Display Authentication method and
	 * this method is enabled by default. An eDP panel must support this
	 * authentication method. We need to enable this method in the eDP panel
	 * at DisplayPort address 0x0010A prior to link training.
	 */
	FUNC4(&pdata->aux, DP_EDP_CONFIGURATION_SET,
			   DP_ALTERNATE_SCRAMBLER_RESET_ENABLE);

	/* Semi auto link training mode */
	FUNC8(pdata->regmap, SN_ML_TX_MODE_REG, 0x0A);
	ret = FUNC6(pdata->regmap, SN_ML_TX_MODE_REG, val,
				       val == ML_TX_MAIN_LINK_OFF ||
				       val == ML_TX_NORMAL_MODE, 1000,
				       500 * 1000);
	if (ret) {
		FUNC2("Training complete polling failed (%d)\n", ret);
		return;
	} else if (val == ML_TX_MAIN_LINK_OFF) {
		FUNC2("Link training failed, link is off\n");
		return;
	}

	/* config video parameters */
	FUNC10(pdata);

	/* enable video stream */
	FUNC7(pdata->regmap, SN_ENH_FRAME_REG, VSTREAM_ENABLE,
			   VSTREAM_ENABLE);

	FUNC5(pdata->panel);
}