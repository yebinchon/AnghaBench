#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_4__ {int rate; int num_lanes; int capabilities; } ;
struct TYPE_3__ {int assr; int scrambler_dis; TYPE_2__ base; scalar_t__ spread; } ;
struct drm_dp_aux {int dummy; } ;
struct tc_data {int assr; struct device* dev; TYPE_1__ link; int /*<<< orphan*/  regmap; struct drm_dp_aux aux; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int BGREN ; 
 int /*<<< orphan*/  BPC_8 ; 
 int /*<<< orphan*/  DP0CTL ; 
 int /*<<< orphan*/  DP0_LTLOOPCTRL ; 
 int /*<<< orphan*/  DP0_MISC ; 
 int /*<<< orphan*/  DP0_PLLCTRL ; 
 int /*<<< orphan*/  DP0_SNKLTCTRL ; 
 int /*<<< orphan*/  DP0_SRCCTRL ; 
 int DP0_SRCCTRL_AUTOCORRECT ; 
 int DP0_SRCCTRL_BW27 ; 
 int DP0_SRCCTRL_SCRMBLDIS ; 
 int DP0_SRCCTRL_SSCG ; 
 int DP0_SRCCTRL_TP1 ; 
 int DP0_SRCCTRL_TP2 ; 
 int /*<<< orphan*/  DP1_PLLCTRL ; 
 int /*<<< orphan*/  DP1_SRCCTRL ; 
 int DP_CHANNEL_EQ_BITS ; 
 int /*<<< orphan*/  DP_DOWNSPREAD_CTRL ; 
 int /*<<< orphan*/  DP_EDP_CONFIGURATION_SET ; 
 int DP_EN ; 
 int DP_INTERLANE_ALIGN_DONE ; 
 int DP_LINK_CAP_ENHANCED_FRAMING ; 
 int DP_LINK_SCRAMBLING_DISABLE ; 
 int DP_LINK_STATUS_SIZE ; 
 int /*<<< orphan*/  DP_PHY_CTRL ; 
 int DP_PHY_RST ; 
 int DP_SET_ANSI_8B10B ; 
 int DP_SPREAD_AMP_0_5 ; 
 int /*<<< orphan*/  DP_TRAINING_LANE0_SET ; 
 int DP_TRAINING_PATTERN_1 ; 
 int DP_TRAINING_PATTERN_2 ; 
 int /*<<< orphan*/  DP_TRAINING_PATTERN_SET ; 
 int DP_TRAIN_PRE_EMPH_LEVEL_0 ; 
 int DP_TRAIN_VOLTAGE_SWING_LEVEL_0 ; 
 int EF_EN ; 
 int ENODEV ; 
 int PHY_2LANE ; 
 int PHY_A0_EN ; 
 int PHY_M0_EN ; 
 int PHY_M0_RST ; 
 int PHY_M1_RST ; 
 int /*<<< orphan*/  PHY_RDY ; 
 int PWR_SW_EN ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int FUNC3 (struct drm_dp_aux*,int*) ; 
 int FUNC4 (struct drm_dp_aux*,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (struct drm_dp_aux*,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC6 (struct drm_dp_aux*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct drm_dp_aux*,TYPE_2__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct tc_data*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct tc_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC13 (struct tc_data*) ; 
 int FUNC14 (struct tc_data*) ; 
 int FUNC15 (struct tc_data*) ; 
 int* training_pattern1_errors ; 
 int* training_pattern2_errors ; 
 int /*<<< orphan*/  FUNC16 (int,int) ; 

__attribute__((used)) static int FUNC17(struct tc_data *tc)
{
	struct drm_dp_aux *aux = &tc->aux;
	struct device *dev = tc->dev;
	u32 dp_phy_ctrl;
	u32 value;
	int ret;
	u8 tmp[DP_LINK_STATUS_SIZE];

	FUNC1(tc->dev, "link enable\n");

	ret = FUNC8(tc->regmap, DP0CTL, &value);
	if (ret)
		return ret;

	if (FUNC0(value & DP_EN)) {
		ret = FUNC10(tc->regmap, DP0CTL, 0);
		if (ret)
			return ret;
	}

	ret = FUNC10(tc->regmap, DP0_SRCCTRL, FUNC14(tc));
	if (ret)
		return ret;
	/* SSCG and BW27 on DP1 must be set to the same as on DP0 */
	ret = FUNC10(tc->regmap, DP1_SRCCTRL,
		 (tc->link.spread ? DP0_SRCCTRL_SSCG : 0) |
		 ((tc->link.base.rate != 162000) ? DP0_SRCCTRL_BW27 : 0));
	if (ret)
		return ret;

	ret = FUNC13(tc);
	if (ret)
		return ret;

	/* Setup Main Link */
	dp_phy_ctrl = BGREN | PWR_SW_EN | PHY_A0_EN | PHY_M0_EN;
	if (tc->link.base.num_lanes == 2)
		dp_phy_ctrl |= PHY_2LANE;

	ret = FUNC10(tc->regmap, DP_PHY_CTRL, dp_phy_ctrl);
	if (ret)
		return ret;

	/* PLL setup */
	ret = FUNC11(tc, DP0_PLLCTRL);
	if (ret)
		return ret;

	ret = FUNC11(tc, DP1_PLLCTRL);
	if (ret)
		return ret;

	/* Reset/Enable Main Links */
	dp_phy_ctrl |= DP_PHY_RST | PHY_M1_RST | PHY_M0_RST;
	ret = FUNC10(tc->regmap, DP_PHY_CTRL, dp_phy_ctrl);
	FUNC16(100, 200);
	dp_phy_ctrl &= ~(DP_PHY_RST | PHY_M1_RST | PHY_M0_RST);
	ret = FUNC10(tc->regmap, DP_PHY_CTRL, dp_phy_ctrl);

	ret = FUNC12(tc, DP_PHY_CTRL, PHY_RDY, PHY_RDY, 1, 1000);
	if (ret) {
		FUNC2(dev, "timeout waiting for phy become ready");
		return ret;
	}

	/* Set misc: 8 bits per color */
	ret = FUNC9(tc->regmap, DP0_MISC, BPC_8, BPC_8);
	if (ret)
		return ret;

	/*
	 * ASSR mode
	 * on TC358767 side ASSR configured through strap pin
	 * seems there is no way to change this setting from SW
	 *
	 * check is tc configured for same mode
	 */
	if (tc->assr != tc->link.assr) {
		FUNC1(dev, "Trying to set display to ASSR: %d\n",
			tc->assr);
		/* try to set ASSR on display side */
		tmp[0] = tc->assr;
		ret = FUNC6(aux, DP_EDP_CONFIGURATION_SET, tmp[0]);
		if (ret < 0)
			goto err_dpcd_read;
		/* read back */
		ret = FUNC4(aux, DP_EDP_CONFIGURATION_SET, tmp);
		if (ret < 0)
			goto err_dpcd_read;

		if (tmp[0] != tc->assr) {
			FUNC1(dev, "Failed to switch display ASSR to %d, falling back to unscrambled mode\n",
				tc->assr);
			/* trying with disabled scrambler */
			tc->link.scrambler_dis = true;
		}
	}

	/* Setup Link & DPRx Config for Training */
	ret = FUNC7(aux, &tc->link.base);
	if (ret < 0)
		goto err_dpcd_write;

	/* DOWNSPREAD_CTRL */
	tmp[0] = tc->link.spread ? DP_SPREAD_AMP_0_5 : 0x00;
	/* MAIN_LINK_CHANNEL_CODING_SET */
	tmp[1] =  DP_SET_ANSI_8B10B;
	ret = FUNC5(aux, DP_DOWNSPREAD_CTRL, tmp, 2);
	if (ret < 0)
		goto err_dpcd_write;

	/* Reset voltage-swing & pre-emphasis */
	tmp[0] = tmp[1] = DP_TRAIN_VOLTAGE_SWING_LEVEL_0 |
			  DP_TRAIN_PRE_EMPH_LEVEL_0;
	ret = FUNC5(aux, DP_TRAINING_LANE0_SET, tmp, 2);
	if (ret < 0)
		goto err_dpcd_write;

	/* Clock-Recovery */

	/* Set DPCD 0x102 for Training Pattern 1 */
	ret = FUNC10(tc->regmap, DP0_SNKLTCTRL,
			   DP_LINK_SCRAMBLING_DISABLE |
			   DP_TRAINING_PATTERN_1);
	if (ret)
		return ret;

	ret = FUNC10(tc->regmap, DP0_LTLOOPCTRL,
			   (15 << 28) |	/* Defer Iteration Count */
			   (15 << 24) |	/* Loop Iteration Count */
			   (0xd << 0));	/* Loop Timer Delay */
	if (ret)
		return ret;

	ret = FUNC10(tc->regmap, DP0_SRCCTRL,
			   FUNC14(tc) | DP0_SRCCTRL_SCRMBLDIS |
			   DP0_SRCCTRL_AUTOCORRECT |
			   DP0_SRCCTRL_TP1);
	if (ret)
		return ret;

	/* Enable DP0 to start Link Training */
	ret = FUNC10(tc->regmap, DP0CTL,
			   ((tc->link.base.capabilities &
			     DP_LINK_CAP_ENHANCED_FRAMING) ? EF_EN : 0) |
			   DP_EN);
	if (ret)
		return ret;

	/* wait */

	ret = FUNC15(tc);
	if (ret < 0)
		return ret;

	if (ret) {
		FUNC2(tc->dev, "Link training phase 1 failed: %s\n",
			training_pattern1_errors[ret]);
		return -ENODEV;
	}

	/* Channel Equalization */

	/* Set DPCD 0x102 for Training Pattern 2 */
	ret = FUNC10(tc->regmap, DP0_SNKLTCTRL,
			   DP_LINK_SCRAMBLING_DISABLE |
			   DP_TRAINING_PATTERN_2);
	if (ret)
		return ret;

	ret = FUNC10(tc->regmap, DP0_SRCCTRL,
			   FUNC14(tc) | DP0_SRCCTRL_SCRMBLDIS |
			   DP0_SRCCTRL_AUTOCORRECT |
			   DP0_SRCCTRL_TP2);
	if (ret)
		return ret;

	/* wait */
	ret = FUNC15(tc);
	if (ret < 0)
		return ret;

	if (ret) {
		FUNC2(tc->dev, "Link training phase 2 failed: %s\n",
			training_pattern2_errors[ret]);
		return -ENODEV;
	}

	/*
	 * Toshiba's documentation suggests to first clear DPCD 0x102, then
	 * clear the training pattern bit in DP0_SRCCTRL. Testing shows
	 * that the link sometimes drops if those steps are done in that order,
	 * but if the steps are done in reverse order, the link stays up.
	 *
	 * So we do the steps differently than documented here.
	 */

	/* Clear Training Pattern, set AutoCorrect Mode = 1 */
	ret = FUNC10(tc->regmap, DP0_SRCCTRL, FUNC14(tc) |
			   DP0_SRCCTRL_AUTOCORRECT);
	if (ret)
		return ret;

	/* Clear DPCD 0x102 */
	/* Note: Can Not use DP0_SNKLTCTRL (0x06E4) short cut */
	tmp[0] = tc->link.scrambler_dis ? DP_LINK_SCRAMBLING_DISABLE : 0x00;
	ret = FUNC6(aux, DP_TRAINING_PATTERN_SET, tmp[0]);
	if (ret < 0)
		goto err_dpcd_write;

	/* Check link status */
	ret = FUNC3(aux, tmp);
	if (ret < 0)
		goto err_dpcd_read;

	ret = 0;

	value = tmp[0] & DP_CHANNEL_EQ_BITS;

	if (value != DP_CHANNEL_EQ_BITS) {
		FUNC2(tc->dev, "Lane 0 failed: %x\n", value);
		ret = -ENODEV;
	}

	if (tc->link.base.num_lanes == 2) {
		value = (tmp[0] >> 4) & DP_CHANNEL_EQ_BITS;

		if (value != DP_CHANNEL_EQ_BITS) {
			FUNC2(tc->dev, "Lane 1 failed: %x\n", value);
			ret = -ENODEV;
		}

		if (!(tmp[2] & DP_INTERLANE_ALIGN_DONE)) {
			FUNC2(tc->dev, "Interlane align failed\n");
			ret = -ENODEV;
		}
	}

	if (ret) {
		FUNC2(dev, "0x0202 LANE0_1_STATUS:            0x%02x\n", tmp[0]);
		FUNC2(dev, "0x0203 LANE2_3_STATUS             0x%02x\n", tmp[1]);
		FUNC2(dev, "0x0204 LANE_ALIGN_STATUS_UPDATED: 0x%02x\n", tmp[2]);
		FUNC2(dev, "0x0205 SINK_STATUS:               0x%02x\n", tmp[3]);
		FUNC2(dev, "0x0206 ADJUST_REQUEST_LANE0_1:    0x%02x\n", tmp[4]);
		FUNC2(dev, "0x0207 ADJUST_REQUEST_LANE2_3:    0x%02x\n", tmp[5]);
		return ret;
	}

	return 0;
err_dpcd_read:
	FUNC2(tc->dev, "Failed to read DPCD: %d\n", ret);
	return ret;
err_dpcd_write:
	FUNC2(tc->dev, "Failed to write DPCD: %d\n", ret);
	return ret;
}