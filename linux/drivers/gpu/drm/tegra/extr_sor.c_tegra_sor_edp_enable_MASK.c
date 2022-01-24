#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct tegra_sor_state {int bpc; } ;
struct tegra_sor_config {int bits_per_pixel; } ;
struct tegra_sor {int /*<<< orphan*/  dev; int /*<<< orphan*/  aux; TYPE_4__* soc; int /*<<< orphan*/  clk_dp; int /*<<< orphan*/ * xbar_cfg; int /*<<< orphan*/  pad; int /*<<< orphan*/  clk_safe; } ;
struct TYPE_7__ {int /*<<< orphan*/  state; } ;
struct tegra_output {scalar_t__ panel; TYPE_2__ connector; } ;
struct tegra_dc {int dummy; } ;
struct drm_encoder {TYPE_5__* crtc; } ;
struct drm_dp_link {int num_lanes; int capabilities; int /*<<< orphan*/  rate; } ;
struct drm_display_mode {int dummy; } ;
typedef  int /*<<< orphan*/  config ;
struct TYPE_10__ {TYPE_1__* state; } ;
struct TYPE_9__ {TYPE_3__* regs; } ;
struct TYPE_8__ {int /*<<< orphan*/  dp_padctl0; int /*<<< orphan*/  pll2; int /*<<< orphan*/  pll0; int /*<<< orphan*/  pll1; int /*<<< orphan*/  pll3; } ;
struct TYPE_6__ {struct drm_display_mode adjusted_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_DISP_DISP_WIN_OPTIONS ; 
 int DP_LINK_CAP_ENHANCED_FRAMING ; 
 int /*<<< orphan*/  SOR_CLK_CNTRL ; 
 int SOR_CLK_CNTRL_DP_CLK_SEL_MASK ; 
 int SOR_CLK_CNTRL_DP_CLK_SEL_SINGLE_DPCLK ; 
 int FUNC0 (int) ; 
 int SOR_CLK_CNTRL_DP_LINK_SPEED_G1_62 ; 
 int SOR_CLK_CNTRL_DP_LINK_SPEED_MASK ; 
 int /*<<< orphan*/  SOR_CSTM ; 
 int SOR_CSTM_LINK_ACT_A ; 
 int SOR_CSTM_LINK_ACT_B ; 
 int SOR_CSTM_LVDS ; 
 int SOR_CSTM_UPPER ; 
 int /*<<< orphan*/  SOR_DP_LINKCTL0 ; 
 int SOR_DP_LINKCTL_ENABLE ; 
 int SOR_DP_LINKCTL_ENHANCED_FRAME ; 
 int FUNC1 (int) ; 
 int SOR_DP_LINKCTL_LANE_COUNT_MASK ; 
 int SOR_DP_PADCTL_PAD_CAL_PD ; 
 int SOR_DP_PADCTL_PD_TXD_0 ; 
 int SOR_DP_PADCTL_PD_TXD_1 ; 
 int SOR_DP_PADCTL_PD_TXD_2 ; 
 int SOR_DP_PADCTL_PD_TXD_3 ; 
 int /*<<< orphan*/  SOR_DP_TPG ; 
 unsigned long SOR_DP_TPG_CHANNEL_CODING ; 
 unsigned long SOR_DP_TPG_PATTERN_NONE ; 
 unsigned long SOR_DP_TPG_SCRAMBLER_GALIOS ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOR_LANE_SEQ_CTL ; 
 int SOR_LANE_SEQ_CTL_POWER_STATE_UP ; 
 int SOR_LANE_SEQ_CTL_SEQUENCE_DOWN ; 
 int SOR_LANE_SEQ_CTL_TRIGGER ; 
 int FUNC3 (int) ; 
 int SOR_PLL0_PLLREG_LEVEL_V45 ; 
 int SOR_PLL0_PWR ; 
 int SOR_PLL0_RESISTOR_EXT ; 
 int SOR_PLL0_VCOCAP_RST ; 
 int SOR_PLL0_VCOPD ; 
 int SOR_PLL1_TERM_COMPOUT ; 
 int SOR_PLL1_TMDS_TERM ; 
 int SOR_PLL2_BANDGAP_POWERDOWN ; 
 int SOR_PLL2_LVDS_ENABLE ; 
 int SOR_PLL2_PORT_POWERDOWN ; 
 int SOR_PLL2_POWERDOWN_OVERRIDE ; 
 int SOR_PLL2_SEQ_PLLCAPPD ; 
 int SOR_PLL2_SEQ_PLLCAPPD_ENFORCE ; 
 int SOR_PLL3_PLL_VDD_MODE_3V3 ; 
 int /*<<< orphan*/  SOR_STATE1 ; 
 int SOR_STATE_ASY_PROTOCOL_DP_A ; 
 int SOR_STATE_ASY_PROTOCOL_MASK ; 
 int /*<<< orphan*/  SOR_XBAR_CTRL ; 
 int FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC5 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  SOR_XBAR_POL ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct drm_dp_link*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct drm_dp_link*) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct drm_dp_link*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 struct tegra_output* FUNC15 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC16 (struct tegra_sor_config*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct tegra_dc*) ; 
 int FUNC19 (struct tegra_dc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct tegra_dc*,int,int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct tegra_sor*,struct tegra_sor_config*) ; 
 int FUNC23 (struct tegra_sor*) ; 
 int FUNC24 (struct tegra_sor*,struct drm_display_mode*,struct tegra_sor_config*,struct drm_dp_link*) ; 
 int FUNC25 (struct tegra_sor*,struct drm_dp_link*) ; 
 int /*<<< orphan*/  FUNC26 (struct tegra_sor*,struct drm_display_mode*,struct tegra_sor_state*) ; 
 int FUNC27 (struct tegra_sor*,int) ; 
 int FUNC28 (struct tegra_sor*,int /*<<< orphan*/ ) ; 
 int FUNC29 (struct tegra_sor*,int /*<<< orphan*/ ) ; 
 int FUNC30 (struct tegra_sor*,int) ; 
 int /*<<< orphan*/  FUNC31 (struct tegra_sor*) ; 
 int FUNC32 (struct tegra_sor*) ; 
 int /*<<< orphan*/  FUNC33 (struct tegra_sor*,int,int /*<<< orphan*/ ) ; 
 struct tegra_sor* FUNC34 (struct tegra_output*) ; 
 struct tegra_sor_state* FUNC35 (int /*<<< orphan*/ ) ; 
 struct tegra_dc* FUNC36 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC37 (int,int) ; 

__attribute__((used)) static void FUNC38(struct drm_encoder *encoder)
{
	struct drm_display_mode *mode = &encoder->crtc->state->adjusted_mode;
	struct tegra_output *output = FUNC15(encoder);
	struct tegra_dc *dc = FUNC36(encoder->crtc);
	struct tegra_sor *sor = FUNC34(output);
	struct tegra_sor_config config;
	struct tegra_sor_state *state;
	struct drm_dp_link link;
	u8 rate, lanes;
	unsigned int i;
	int err = 0;
	u32 value;

	state = FUNC35(output->connector.state);

	FUNC17(sor->dev);

	if (output->panel)
		FUNC14(output->panel);

	err = FUNC8(sor->aux);
	if (err < 0)
		FUNC7(sor->dev, "failed to enable DP: %d\n", err);

	err = FUNC11(sor->aux, &link);
	if (err < 0) {
		FUNC7(sor->dev, "failed to probe eDP link: %d\n", err);
		return;
	}

	/* switch to safe parent clock */
	err = FUNC29(sor, sor->clk_safe);
	if (err < 0)
		FUNC7(sor->dev, "failed to set safe parent clock: %d\n", err);

	FUNC16(&config, 0, sizeof(config));
	config.bits_per_pixel = state->bpc * 3;

	err = FUNC24(sor, mode, &config, &link);
	if (err < 0)
		FUNC7(sor->dev, "failed to compute configuration: %d\n", err);

	value = FUNC28(sor, SOR_CLK_CNTRL);
	value &= ~SOR_CLK_CNTRL_DP_CLK_SEL_MASK;
	value |= SOR_CLK_CNTRL_DP_CLK_SEL_SINGLE_DPCLK;
	FUNC33(sor, value, SOR_CLK_CNTRL);

	value = FUNC28(sor, sor->soc->regs->pll2);
	value &= ~SOR_PLL2_BANDGAP_POWERDOWN;
	FUNC33(sor, value, sor->soc->regs->pll2);
	FUNC37(20, 100);

	value = FUNC28(sor, sor->soc->regs->pll3);
	value |= SOR_PLL3_PLL_VDD_MODE_3V3;
	FUNC33(sor, value, sor->soc->regs->pll3);

	value = FUNC3(0xf) | SOR_PLL0_VCOCAP_RST |
		SOR_PLL0_PLLREG_LEVEL_V45 | SOR_PLL0_RESISTOR_EXT;
	FUNC33(sor, value, sor->soc->regs->pll0);

	value = FUNC28(sor, sor->soc->regs->pll2);
	value |= SOR_PLL2_SEQ_PLLCAPPD;
	value &= ~SOR_PLL2_SEQ_PLLCAPPD_ENFORCE;
	value |= SOR_PLL2_LVDS_ENABLE;
	FUNC33(sor, value, sor->soc->regs->pll2);

	value = SOR_PLL1_TERM_COMPOUT | SOR_PLL1_TMDS_TERM;
	FUNC33(sor, value, sor->soc->regs->pll1);

	while (true) {
		value = FUNC28(sor, sor->soc->regs->pll2);
		if ((value & SOR_PLL2_SEQ_PLLCAPPD_ENFORCE) == 0)
			break;

		FUNC37(250, 1000);
	}

	value = FUNC28(sor, sor->soc->regs->pll2);
	value &= ~SOR_PLL2_POWERDOWN_OVERRIDE;
	value &= ~SOR_PLL2_PORT_POWERDOWN;
	FUNC33(sor, value, sor->soc->regs->pll2);

	/*
	 * power up
	 */

	/* set safe link bandwidth (1.62 Gbps) */
	value = FUNC28(sor, SOR_CLK_CNTRL);
	value &= ~SOR_CLK_CNTRL_DP_LINK_SPEED_MASK;
	value |= SOR_CLK_CNTRL_DP_LINK_SPEED_G1_62;
	FUNC33(sor, value, SOR_CLK_CNTRL);

	/* step 1 */
	value = FUNC28(sor, sor->soc->regs->pll2);
	value |= SOR_PLL2_SEQ_PLLCAPPD_ENFORCE | SOR_PLL2_PORT_POWERDOWN |
		 SOR_PLL2_BANDGAP_POWERDOWN;
	FUNC33(sor, value, sor->soc->regs->pll2);

	value = FUNC28(sor, sor->soc->regs->pll0);
	value |= SOR_PLL0_VCOPD | SOR_PLL0_PWR;
	FUNC33(sor, value, sor->soc->regs->pll0);

	value = FUNC28(sor, sor->soc->regs->dp_padctl0);
	value &= ~SOR_DP_PADCTL_PAD_CAL_PD;
	FUNC33(sor, value, sor->soc->regs->dp_padctl0);

	/* step 2 */
	err = FUNC21(sor->pad);
	if (err < 0)
		FUNC7(sor->dev, "failed to power on I/O pad: %d\n", err);

	FUNC37(5, 100);

	/* step 3 */
	value = FUNC28(sor, sor->soc->regs->pll2);
	value &= ~SOR_PLL2_BANDGAP_POWERDOWN;
	FUNC33(sor, value, sor->soc->regs->pll2);

	FUNC37(20, 100);

	/* step 4 */
	value = FUNC28(sor, sor->soc->regs->pll0);
	value &= ~SOR_PLL0_VCOPD;
	value &= ~SOR_PLL0_PWR;
	FUNC33(sor, value, sor->soc->regs->pll0);

	value = FUNC28(sor, sor->soc->regs->pll2);
	value &= ~SOR_PLL2_SEQ_PLLCAPPD_ENFORCE;
	FUNC33(sor, value, sor->soc->regs->pll2);

	FUNC37(200, 1000);

	/* step 5 */
	value = FUNC28(sor, sor->soc->regs->pll2);
	value &= ~SOR_PLL2_PORT_POWERDOWN;
	FUNC33(sor, value, sor->soc->regs->pll2);

	/* XXX not in TRM */
	for (value = 0, i = 0; i < 5; i++)
		value |= FUNC4(i, sor->xbar_cfg[i]) |
			 FUNC5(i, i);

	FUNC33(sor, 0x00000000, SOR_XBAR_POL);
	FUNC33(sor, value, SOR_XBAR_CTRL);

	/* switch to DP parent clock */
	err = FUNC29(sor, sor->clk_dp);
	if (err < 0)
		FUNC7(sor->dev, "failed to set parent clock: %d\n", err);

	/* power DP lanes */
	value = FUNC28(sor, sor->soc->regs->dp_padctl0);

	if (link.num_lanes <= 2)
		value &= ~(SOR_DP_PADCTL_PD_TXD_3 | SOR_DP_PADCTL_PD_TXD_2);
	else
		value |= SOR_DP_PADCTL_PD_TXD_3 | SOR_DP_PADCTL_PD_TXD_2;

	if (link.num_lanes <= 1)
		value &= ~SOR_DP_PADCTL_PD_TXD_1;
	else
		value |= SOR_DP_PADCTL_PD_TXD_1;

	if (link.num_lanes == 0)
		value &= ~SOR_DP_PADCTL_PD_TXD_0;
	else
		value |= SOR_DP_PADCTL_PD_TXD_0;

	FUNC33(sor, value, sor->soc->regs->dp_padctl0);

	value = FUNC28(sor, SOR_DP_LINKCTL0);
	value &= ~SOR_DP_LINKCTL_LANE_COUNT_MASK;
	value |= FUNC1(link.num_lanes);
	FUNC33(sor, value, SOR_DP_LINKCTL0);

	/* start lane sequencer */
	value = SOR_LANE_SEQ_CTL_TRIGGER | SOR_LANE_SEQ_CTL_SEQUENCE_DOWN |
		SOR_LANE_SEQ_CTL_POWER_STATE_UP;
	FUNC33(sor, value, SOR_LANE_SEQ_CTL);

	while (true) {
		value = FUNC28(sor, SOR_LANE_SEQ_CTL);
		if ((value & SOR_LANE_SEQ_CTL_TRIGGER) == 0)
			break;

		FUNC37(250, 1000);
	}

	/* set link bandwidth */
	value = FUNC28(sor, SOR_CLK_CNTRL);
	value &= ~SOR_CLK_CNTRL_DP_LINK_SPEED_MASK;
	value |= FUNC12(link.rate) << 2;
	FUNC33(sor, value, SOR_CLK_CNTRL);

	FUNC22(sor, &config);

	/* enable link */
	value = FUNC28(sor, SOR_DP_LINKCTL0);
	value |= SOR_DP_LINKCTL_ENABLE;
	value |= SOR_DP_LINKCTL_ENHANCED_FRAME;
	FUNC33(sor, value, SOR_DP_LINKCTL0);

	for (i = 0, value = 0; i < 4; i++) {
		unsigned long lane = SOR_DP_TPG_CHANNEL_CODING |
				     SOR_DP_TPG_SCRAMBLER_GALIOS |
				     SOR_DP_TPG_PATTERN_NONE;
		value = (value << 8) | lane;
	}

	FUNC33(sor, value, SOR_DP_TPG);

	/* enable pad calibration logic */
	value = FUNC28(sor, sor->soc->regs->dp_padctl0);
	value |= SOR_DP_PADCTL_PAD_CAL_PD;
	FUNC33(sor, value, sor->soc->regs->dp_padctl0);

	err = FUNC11(sor->aux, &link);
	if (err < 0)
		FUNC7(sor->dev, "failed to probe eDP link: %d\n", err);

	err = FUNC10(sor->aux, &link);
	if (err < 0)
		FUNC7(sor->dev, "failed to power up eDP link: %d\n", err);

	err = FUNC9(sor->aux, &link);
	if (err < 0)
		FUNC7(sor->dev, "failed to configure eDP link: %d\n", err);

	rate = FUNC12(link.rate);
	lanes = link.num_lanes;

	value = FUNC28(sor, SOR_CLK_CNTRL);
	value &= ~SOR_CLK_CNTRL_DP_LINK_SPEED_MASK;
	value |= FUNC0(rate);
	FUNC33(sor, value, SOR_CLK_CNTRL);

	value = FUNC28(sor, SOR_DP_LINKCTL0);
	value &= ~SOR_DP_LINKCTL_LANE_COUNT_MASK;
	value |= FUNC1(lanes);

	if (link.capabilities & DP_LINK_CAP_ENHANCED_FRAMING)
		value |= SOR_DP_LINKCTL_ENHANCED_FRAME;

	FUNC33(sor, value, SOR_DP_LINKCTL0);

	/* disable training pattern generator */

	for (i = 0; i < link.num_lanes; i++) {
		unsigned long lane = SOR_DP_TPG_CHANNEL_CODING |
				     SOR_DP_TPG_SCRAMBLER_GALIOS |
				     SOR_DP_TPG_PATTERN_NONE;
		value = (value << 8) | lane;
	}

	FUNC33(sor, value, SOR_DP_TPG);

	err = FUNC25(sor, &link);
	if (err < 0)
		FUNC7(sor->dev, "DP fast link training failed: %d\n", err);

	FUNC6(sor->dev, "fast link training succeeded\n");

	err = FUNC27(sor, 250);
	if (err < 0)
		FUNC7(sor->dev, "failed to power up SOR: %d\n", err);

	/* CSTM (LVDS, link A/B, upper) */
	value = SOR_CSTM_LVDS | SOR_CSTM_LINK_ACT_A | SOR_CSTM_LINK_ACT_B |
		SOR_CSTM_UPPER;
	FUNC33(sor, value, SOR_CSTM);

	/* use DP-A protocol */
	value = FUNC28(sor, SOR_STATE1);
	value &= ~SOR_STATE_ASY_PROTOCOL_MASK;
	value |= SOR_STATE_ASY_PROTOCOL_DP_A;
	FUNC33(sor, value, SOR_STATE1);

	FUNC26(sor, mode, state);

	/* PWM setup */
	err = FUNC30(sor, 250);
	if (err < 0)
		FUNC7(sor->dev, "failed to setup PWM: %d\n", err);

	FUNC31(sor);

	value = FUNC19(dc, DC_DISP_DISP_WIN_OPTIONS);
	value |= FUNC2(0);
	FUNC20(dc, value, DC_DISP_DISP_WIN_OPTIONS);

	FUNC18(dc);

	err = FUNC23(sor);
	if (err < 0)
		FUNC7(sor->dev, "failed to attach SOR: %d\n", err);

	err = FUNC32(sor);
	if (err < 0)
		FUNC7(sor->dev, "failed to enable DC: %d\n", err);

	if (output->panel)
		FUNC13(output->panel);
}