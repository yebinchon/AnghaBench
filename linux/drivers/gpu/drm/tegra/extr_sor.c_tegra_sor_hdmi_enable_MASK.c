#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct tegra_sor_state {int bpc; } ;
struct tegra_sor_hdmi_settings {int* drive_current; int* preemphasis; int /*<<< orphan*/  sparepll; int /*<<< orphan*/  tx_pu_value; int /*<<< orphan*/  avdd14_level; int /*<<< orphan*/  avdd10_level; int /*<<< orphan*/  bg_vref_level; int /*<<< orphan*/  bg_temp_coef; int /*<<< orphan*/  tmds_termadj; int /*<<< orphan*/  loadadj; int /*<<< orphan*/  vcocap; int /*<<< orphan*/  filter; int /*<<< orphan*/  ichpmp; } ;
struct tegra_sor {int index; int /*<<< orphan*/  dev; TYPE_4__* soc; int /*<<< orphan*/  clk; int /*<<< orphan*/  clk_parent; int /*<<< orphan*/  clk_pad; int /*<<< orphan*/ * xbar_cfg; int /*<<< orphan*/  pad; int /*<<< orphan*/  clk_safe; } ;
struct TYPE_7__ {int /*<<< orphan*/  state; } ;
struct tegra_output {TYPE_1__ connector; } ;
struct tegra_dc {TYPE_5__* soc; scalar_t__ pipe; } ;
struct drm_encoder {TYPE_6__* crtc; } ;
struct drm_display_mode {int clock; int htotal; int hdisplay; unsigned int hsync_end; unsigned int hsync_start; } ;
struct TYPE_12__ {TYPE_2__* state; } ;
struct TYPE_11__ {scalar_t__ has_nvdisplay; } ;
struct TYPE_10__ {int /*<<< orphan*/  has_nvdisplay; TYPE_3__* regs; } ;
struct TYPE_9__ {scalar_t__ head_state0; scalar_t__ dp_padctl0; scalar_t__ dp_padctl2; scalar_t__ pll3; scalar_t__ pll1; scalar_t__ pll0; scalar_t__ pll2; } ;
struct TYPE_8__ {struct drm_display_mode adjusted_mode; } ;

/* Variables and functions */
 int BASE_COLOR_SIZE_101010 ; 
 int BASE_COLOR_SIZE_121212 ; 
 int BASE_COLOR_SIZE_666 ; 
 int BASE_COLOR_SIZE_888 ; 
 int BASE_COLOR_SIZE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DC_DISP_DISP_COLOR_CONTROL ; 
 int /*<<< orphan*/  DC_DISP_DISP_SIGNAL_OPTIONS0 ; 
 int /*<<< orphan*/  DC_DISP_DISP_TIMING_OPTIONS ; 
 int /*<<< orphan*/  DC_DISP_DISP_WIN_OPTIONS ; 
 int /*<<< orphan*/  DC_DISP_H_PULSE2_CONTROL ; 
 int /*<<< orphan*/  DC_DISP_H_PULSE2_POSITION_A ; 
 int DITHER_CONTROL_MASK ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int H_PULSE2_ENABLE ; 
 int PROTOCOL_MASK ; 
 int PROTOCOL_SINGLE_TMDS_A ; 
 int FUNC2 (unsigned int) ; 
 int PULSE_LAST_END_A ; 
 int PULSE_MODE_NORMAL ; 
 int PULSE_POLARITY_HIGH ; 
 int PULSE_QUAL_VACTIVE ; 
 int FUNC3 (unsigned int) ; 
 int SOR1_TIMING_CYA ; 
 scalar_t__ SOR_CLK_CNTRL ; 
 int SOR_CLK_CNTRL_DP_CLK_SEL_MASK ; 
 int SOR_CLK_CNTRL_DP_CLK_SEL_SINGLE_PCLK ; 
 int SOR_CLK_CNTRL_DP_LINK_SPEED_G2_70 ; 
 int SOR_CLK_CNTRL_DP_LINK_SPEED_G5_40 ; 
 int SOR_CLK_CNTRL_DP_LINK_SPEED_MASK ; 
 scalar_t__ SOR_DP_LINKCTL0 ; 
 int FUNC4 (int) ; 
 int SOR_DP_LINKCTL_LANE_COUNT_MASK ; 
 int SOR_DP_PADCTL_PAD_CAL_PD ; 
 int SOR_DP_PADCTL_PD_TXD_0 ; 
 int SOR_DP_PADCTL_PD_TXD_1 ; 
 int SOR_DP_PADCTL_PD_TXD_2 ; 
 int SOR_DP_PADCTL_PD_TXD_3 ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int SOR_DP_PADCTL_SPAREPLL_MASK ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int SOR_DP_PADCTL_TX_PU_ENABLE ; 
 int SOR_DP_PADCTL_TX_PU_MASK ; 
 scalar_t__ SOR_DP_SPARE0 ; 
 int SOR_DP_SPARE_DISP_VIDEO_PREAMBLE ; 
 int SOR_DP_SPARE_MACRO_SOR_CLK ; 
 int SOR_DP_SPARE_PANEL_INTERNAL ; 
 int SOR_DP_SPARE_SEQ_ENABLE ; 
 int FUNC7 (int) ; 
 scalar_t__ SOR_HDMI_CTRL ; 
 int SOR_HDMI_CTRL_AUDIO_LAYOUT ; 
 int SOR_HDMI_CTRL_ENABLE ; 
 int FUNC8 (unsigned int) ; 
 int FUNC9 (int) ; 
 int SOR_HEAD_STATE_COLORSPACE_MASK ; 
 int SOR_HEAD_STATE_COLORSPACE_RGB ; 
 int SOR_HEAD_STATE_DYNRANGE_MASK ; 
 int SOR_HEAD_STATE_RANGECOMPRESS_MASK ; 
 scalar_t__ SOR_INPUT_CONTROL ; 
 int SOR_INPUT_CONTROL_ARM_VIDEO_RANGE_LIMITED ; 
 int FUNC10 (scalar_t__) ; 
 scalar_t__ SOR_LANE_DRIVE_CURRENT0 ; 
 scalar_t__ SOR_LANE_PREEMPHASIS0 ; 
 scalar_t__ SOR_LANE_SEQ_CTL ; 
 int FUNC11 (int) ; 
 int SOR_LANE_SEQ_CTL_POWER_STATE_UP ; 
 int SOR_LANE_SEQ_CTL_SEQUENCE_DOWN ; 
 int SOR_LANE_SEQ_CTL_STATE_BUSY ; 
 int SOR_LANE_SEQ_CTL_TRIGGER ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int SOR_PLL0_FILTER_MASK ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int SOR_PLL0_ICHPMP_MASK ; 
 int SOR_PLL0_PWR ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int SOR_PLL0_VCOCAP_MASK ; 
 int SOR_PLL0_VCOPD ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int SOR_PLL1_LOADADJ_MASK ; 
 int SOR_PLL1_TMDS_TERM ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int SOR_PLL1_TMDS_TERMADJ_MASK ; 
 int SOR_PLL2_BANDGAP_POWERDOWN ; 
 int SOR_PLL2_PORT_POWERDOWN ; 
 int SOR_PLL2_POWERDOWN_OVERRIDE ; 
 int SOR_PLL2_SEQ_PLLCAPPD_ENFORCE ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int SOR_PLL3_AVDD10_LEVEL_MASK ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int SOR_PLL3_AVDD14_LEVEL_MASK ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int SOR_PLL3_BG_TEMP_COEF_MASK ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 int SOR_PLL3_BG_VREF_LEVEL_MASK ; 
 int SOR_PLL3_PLL_VDD_MODE_3V3 ; 
 scalar_t__ SOR_REFCLK ; 
 int FUNC21 (unsigned int) ; 
 int FUNC22 (unsigned int) ; 
 int SOR_REKEY ; 
 scalar_t__ SOR_SEQ_CTL ; 
 int FUNC23 (int) ; 
 int FUNC24 (int) ; 
 int FUNC25 (int /*<<< orphan*/ ) ; 
 int FUNC26 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (int) ; 
 int SOR_SEQ_INST_DRIVE_PWM_OUT_LO ; 
 int SOR_SEQ_INST_HALT ; 
 int FUNC28 (int) ; 
 int SOR_SEQ_INST_WAIT_VSYNC ; 
 scalar_t__ SOR_STATE1 ; 
 int FUNC29 (scalar_t__) ; 
 int SOR_STATE_ASY_OWNER_MASK ; 
 int SOR_STATE_ASY_PROTOCOL_MASK ; 
 int SOR_STATE_ASY_PROTOCOL_SINGLE_TMDS_A ; 
 scalar_t__ SOR_XBAR_CTRL ; 
 int FUNC30 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC31 (unsigned int,unsigned int) ; 
 scalar_t__ SOR_XBAR_POL ; 
 int FUNC32 (int) ; 
 int /*<<< orphan*/  FUNC33 (int,char*,int) ; 
 int FUNC34 (int /*<<< orphan*/ ) ; 
 int FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ,char*,int) ; 
 struct tegra_output* FUNC38 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (struct tegra_dc*) ; 
 int FUNC41 (struct tegra_dc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (struct tegra_dc*,int,int /*<<< orphan*/ ) ; 
 int FUNC43 (int /*<<< orphan*/ ) ; 
 int FUNC44 (struct tegra_sor*) ; 
 int /*<<< orphan*/  FUNC45 (struct tegra_sor*) ; 
 int /*<<< orphan*/  FUNC46 (struct tegra_sor*) ; 
 struct tegra_sor_hdmi_settings* FUNC47 (struct tegra_sor*,int) ; 
 int /*<<< orphan*/  FUNC48 (struct tegra_sor*) ; 
 int FUNC49 (struct tegra_sor*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC50 (struct tegra_sor*,struct drm_display_mode*,struct tegra_sor_state*) ; 
 int FUNC51 (struct tegra_sor*,int) ; 
 int FUNC52 (struct tegra_sor*,scalar_t__) ; 
 int FUNC53 (struct tegra_sor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC54 (struct tegra_sor*) ; 
 int FUNC55 (struct tegra_sor*) ; 
 int /*<<< orphan*/  FUNC56 (struct tegra_sor*,int,scalar_t__) ; 
 struct tegra_sor* FUNC57 (struct tegra_output*) ; 
 struct tegra_sor_state* FUNC58 (int /*<<< orphan*/ ) ; 
 struct tegra_dc* FUNC59 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC60 (int,int) ; 

__attribute__((used)) static void FUNC61(struct drm_encoder *encoder)
{
	struct tegra_output *output = FUNC38(encoder);
	unsigned int h_ref_to_sync = 1, pulse_start, max_ac;
	struct tegra_dc *dc = FUNC59(encoder->crtc);
	struct tegra_sor_hdmi_settings *settings;
	struct tegra_sor *sor = FUNC57(output);
	struct tegra_sor_state *state;
	struct drm_display_mode *mode;
	unsigned long rate, pclk;
	unsigned int div, i;
	u32 value;
	int err;

	state = FUNC58(output->connector.state);
	mode = &encoder->crtc->state->adjusted_mode;
	pclk = mode->clock * 1000;

	FUNC39(sor->dev);

	/* switch to safe parent clock */
	err = FUNC53(sor, sor->clk_safe);
	if (err < 0) {
		FUNC37(sor->dev, "failed to set safe parent clock: %d\n", err);
		return;
	}

	div = FUNC34(sor->clk) / 1000000 * 4;

	err = FUNC43(sor->pad);
	if (err < 0)
		FUNC37(sor->dev, "failed to power on I/O pad: %d\n", err);

	FUNC60(20, 100);

	value = FUNC52(sor, sor->soc->regs->pll2);
	value &= ~SOR_PLL2_BANDGAP_POWERDOWN;
	FUNC56(sor, value, sor->soc->regs->pll2);

	FUNC60(20, 100);

	value = FUNC52(sor, sor->soc->regs->pll3);
	value &= ~SOR_PLL3_PLL_VDD_MODE_3V3;
	FUNC56(sor, value, sor->soc->regs->pll3);

	value = FUNC52(sor, sor->soc->regs->pll0);
	value &= ~SOR_PLL0_VCOPD;
	value &= ~SOR_PLL0_PWR;
	FUNC56(sor, value, sor->soc->regs->pll0);

	value = FUNC52(sor, sor->soc->regs->pll2);
	value &= ~SOR_PLL2_SEQ_PLLCAPPD_ENFORCE;
	FUNC56(sor, value, sor->soc->regs->pll2);

	FUNC60(200, 400);

	value = FUNC52(sor, sor->soc->regs->pll2);
	value &= ~SOR_PLL2_POWERDOWN_OVERRIDE;
	value &= ~SOR_PLL2_PORT_POWERDOWN;
	FUNC56(sor, value, sor->soc->regs->pll2);

	FUNC60(20, 100);

	value = FUNC52(sor, sor->soc->regs->dp_padctl0);
	value |= SOR_DP_PADCTL_PD_TXD_3 | SOR_DP_PADCTL_PD_TXD_0 |
		 SOR_DP_PADCTL_PD_TXD_1 | SOR_DP_PADCTL_PD_TXD_2;
	FUNC56(sor, value, sor->soc->regs->dp_padctl0);

	while (true) {
		value = FUNC52(sor, SOR_LANE_SEQ_CTL);
		if ((value & SOR_LANE_SEQ_CTL_STATE_BUSY) == 0)
			break;

		FUNC60(250, 1000);
	}

	value = SOR_LANE_SEQ_CTL_TRIGGER | SOR_LANE_SEQ_CTL_SEQUENCE_DOWN |
		SOR_LANE_SEQ_CTL_POWER_STATE_UP | FUNC11(5);
	FUNC56(sor, value, SOR_LANE_SEQ_CTL);

	while (true) {
		value = FUNC52(sor, SOR_LANE_SEQ_CTL);
		if ((value & SOR_LANE_SEQ_CTL_TRIGGER) == 0)
			break;

		FUNC60(250, 1000);
	}

	value = FUNC52(sor, SOR_CLK_CNTRL);
	value &= ~SOR_CLK_CNTRL_DP_LINK_SPEED_MASK;
	value &= ~SOR_CLK_CNTRL_DP_CLK_SEL_MASK;

	if (mode->clock < 340000) {
		FUNC1("setting 2.7 GHz link speed\n");
		value |= SOR_CLK_CNTRL_DP_LINK_SPEED_G2_70;
	} else {
		FUNC1("setting 5.4 GHz link speed\n");
		value |= SOR_CLK_CNTRL_DP_LINK_SPEED_G5_40;
	}

	value |= SOR_CLK_CNTRL_DP_CLK_SEL_SINGLE_PCLK;
	FUNC56(sor, value, SOR_CLK_CNTRL);

	/* SOR pad PLL stabilization time */
	FUNC60(250, 1000);

	value = FUNC52(sor, SOR_DP_LINKCTL0);
	value &= ~SOR_DP_LINKCTL_LANE_COUNT_MASK;
	value |= FUNC4(4);
	FUNC56(sor, value, SOR_DP_LINKCTL0);

	value = FUNC52(sor, SOR_DP_SPARE0);
	value &= ~SOR_DP_SPARE_DISP_VIDEO_PREAMBLE;
	value &= ~SOR_DP_SPARE_PANEL_INTERNAL;
	value &= ~SOR_DP_SPARE_SEQ_ENABLE;
	value &= ~SOR_DP_SPARE_MACRO_SOR_CLK;
	FUNC56(sor, value, SOR_DP_SPARE0);

	value = FUNC25(0) | FUNC26(0) |
		FUNC23(8) | FUNC24(8);
	FUNC56(sor, value, SOR_SEQ_CTL);

	value = SOR_SEQ_INST_DRIVE_PWM_OUT_LO | SOR_SEQ_INST_HALT |
		SOR_SEQ_INST_WAIT_VSYNC | FUNC28(1);
	FUNC56(sor, value, FUNC27(0));
	FUNC56(sor, value, FUNC27(8));

	if (!sor->soc->has_nvdisplay) {
		/* program the reference clock */
		value = FUNC22(div) | FUNC21(div);
		FUNC56(sor, value, SOR_REFCLK);
	}

	/* XXX not in TRM */
	for (value = 0, i = 0; i < 5; i++)
		value |= FUNC30(i, sor->xbar_cfg[i]) |
			 FUNC31(i, i);

	FUNC56(sor, 0x00000000, SOR_XBAR_POL);
	FUNC56(sor, value, SOR_XBAR_CTRL);

	/* switch to parent clock */
	err = FUNC35(sor->clk, sor->clk_parent);
	if (err < 0) {
		FUNC37(sor->dev, "failed to set parent clock: %d\n", err);
		return;
	}

	err = FUNC53(sor, sor->clk_pad);
	if (err < 0) {
		FUNC37(sor->dev, "failed to set pad clock: %d\n", err);
		return;
	}

	/* adjust clock rate for HDMI 2.0 modes */
	rate = FUNC34(sor->clk_parent);

	if (mode->clock >= 340000)
		rate /= 2;

	FUNC1("setting clock to %lu Hz, mode: %lu Hz\n", rate, pclk);

	FUNC36(sor->clk, rate);

	if (!sor->soc->has_nvdisplay) {
		value = FUNC10(dc->pipe);

		/* XXX is this the proper check? */
		if (mode->clock < 75000)
			value |= SOR_INPUT_CONTROL_ARM_VIDEO_RANGE_LIMITED;

		FUNC56(sor, value, SOR_INPUT_CONTROL);
	}

	max_ac = ((mode->htotal - mode->hdisplay) - SOR_REKEY - 18) / 32;

	value = SOR_HDMI_CTRL_ENABLE | FUNC8(max_ac) |
		SOR_HDMI_CTRL_AUDIO_LAYOUT | FUNC9(SOR_REKEY);
	FUNC56(sor, value, SOR_HDMI_CTRL);

	if (!dc->soc->has_nvdisplay) {
		/* H_PULSE2 setup */
		pulse_start = h_ref_to_sync +
			      (mode->hsync_end - mode->hsync_start) +
			      (mode->htotal - mode->hsync_end) - 10;

		value = PULSE_LAST_END_A | PULSE_QUAL_VACTIVE |
			PULSE_POLARITY_HIGH | PULSE_MODE_NORMAL;
		FUNC42(dc, value, DC_DISP_H_PULSE2_CONTROL);

		value = FUNC2(pulse_start + 8) | FUNC3(pulse_start);
		FUNC42(dc, value, DC_DISP_H_PULSE2_POSITION_A);

		value = FUNC41(dc, DC_DISP_DISP_SIGNAL_OPTIONS0);
		value |= H_PULSE2_ENABLE;
		FUNC42(dc, value, DC_DISP_DISP_SIGNAL_OPTIONS0);
	}

	/* infoframe setup */
	err = FUNC49(sor, mode);
	if (err < 0)
		FUNC37(sor->dev, "failed to setup AVI infoframe: %d\n", err);

	/* XXX HDMI audio support not implemented yet */
	FUNC46(sor);

	/* use single TMDS protocol */
	value = FUNC52(sor, SOR_STATE1);
	value &= ~SOR_STATE_ASY_PROTOCOL_MASK;
	value |= SOR_STATE_ASY_PROTOCOL_SINGLE_TMDS_A;
	FUNC56(sor, value, SOR_STATE1);

	/* power up pad calibration */
	value = FUNC52(sor, sor->soc->regs->dp_padctl0);
	value &= ~SOR_DP_PADCTL_PAD_CAL_PD;
	FUNC56(sor, value, sor->soc->regs->dp_padctl0);

	/* production settings */
	settings = FUNC47(sor, mode->clock * 1000);
	if (!settings) {
		FUNC37(sor->dev, "no settings for pixel clock %d Hz\n",
			mode->clock * 1000);
		return;
	}

	value = FUNC52(sor, sor->soc->regs->pll0);
	value &= ~SOR_PLL0_ICHPMP_MASK;
	value &= ~SOR_PLL0_FILTER_MASK;
	value &= ~SOR_PLL0_VCOCAP_MASK;
	value |= FUNC13(settings->ichpmp);
	value |= FUNC12(settings->filter);
	value |= FUNC14(settings->vcocap);
	FUNC56(sor, value, sor->soc->regs->pll0);

	/* XXX not in TRM */
	value = FUNC52(sor, sor->soc->regs->pll1);
	value &= ~SOR_PLL1_LOADADJ_MASK;
	value &= ~SOR_PLL1_TMDS_TERMADJ_MASK;
	value |= FUNC15(settings->loadadj);
	value |= FUNC16(settings->tmds_termadj);
	value |= SOR_PLL1_TMDS_TERM;
	FUNC56(sor, value, sor->soc->regs->pll1);

	value = FUNC52(sor, sor->soc->regs->pll3);
	value &= ~SOR_PLL3_BG_TEMP_COEF_MASK;
	value &= ~SOR_PLL3_BG_VREF_LEVEL_MASK;
	value &= ~SOR_PLL3_AVDD10_LEVEL_MASK;
	value &= ~SOR_PLL3_AVDD14_LEVEL_MASK;
	value |= FUNC19(settings->bg_temp_coef);
	value |= FUNC20(settings->bg_vref_level);
	value |= FUNC17(settings->avdd10_level);
	value |= FUNC18(settings->avdd14_level);
	FUNC56(sor, value, sor->soc->regs->pll3);

	value = settings->drive_current[3] << 24 |
		settings->drive_current[2] << 16 |
		settings->drive_current[1] <<  8 |
		settings->drive_current[0] <<  0;
	FUNC56(sor, value, SOR_LANE_DRIVE_CURRENT0);

	value = settings->preemphasis[3] << 24 |
		settings->preemphasis[2] << 16 |
		settings->preemphasis[1] <<  8 |
		settings->preemphasis[0] <<  0;
	FUNC56(sor, value, SOR_LANE_PREEMPHASIS0);

	value = FUNC52(sor, sor->soc->regs->dp_padctl0);
	value &= ~SOR_DP_PADCTL_TX_PU_MASK;
	value |= SOR_DP_PADCTL_TX_PU_ENABLE;
	value |= FUNC6(settings->tx_pu_value);
	FUNC56(sor, value, sor->soc->regs->dp_padctl0);

	value = FUNC52(sor, sor->soc->regs->dp_padctl2);
	value &= ~SOR_DP_PADCTL_SPAREPLL_MASK;
	value |= FUNC5(settings->sparepll);
	FUNC56(sor, value, sor->soc->regs->dp_padctl2);

	/* power down pad calibration */
	value = FUNC52(sor, sor->soc->regs->dp_padctl0);
	value |= SOR_DP_PADCTL_PAD_CAL_PD;
	FUNC56(sor, value, sor->soc->regs->dp_padctl0);

	if (!dc->soc->has_nvdisplay) {
		/* miscellaneous display controller settings */
		value = FUNC32(1);
		FUNC42(dc, value, DC_DISP_DISP_TIMING_OPTIONS);
	}

	value = FUNC41(dc, DC_DISP_DISP_COLOR_CONTROL);
	value &= ~DITHER_CONTROL_MASK;
	value &= ~BASE_COLOR_SIZE_MASK;

	switch (state->bpc) {
	case 6:
		value |= BASE_COLOR_SIZE_666;
		break;

	case 8:
		value |= BASE_COLOR_SIZE_888;
		break;

	case 10:
		value |= BASE_COLOR_SIZE_101010;
		break;

	case 12:
		value |= BASE_COLOR_SIZE_121212;
		break;

	default:
		FUNC33(1, "%u bits-per-color not supported\n", state->bpc);
		value |= BASE_COLOR_SIZE_888;
		break;
	}

	FUNC42(dc, value, DC_DISP_DISP_COLOR_CONTROL);

	/* XXX set display head owner */
	value = FUNC52(sor, SOR_STATE1);
	value &= ~SOR_STATE_ASY_OWNER_MASK;
	value |= FUNC29(1 + dc->pipe);
	FUNC56(sor, value, SOR_STATE1);

	err = FUNC51(sor, 250);
	if (err < 0)
		FUNC37(sor->dev, "failed to power up SOR: %d\n", err);

	/* configure dynamic range of output */
	value = FUNC52(sor, sor->soc->regs->head_state0 + dc->pipe);
	value &= ~SOR_HEAD_STATE_RANGECOMPRESS_MASK;
	value &= ~SOR_HEAD_STATE_DYNRANGE_MASK;
	FUNC56(sor, value, sor->soc->regs->head_state0 + dc->pipe);

	/* configure colorspace */
	value = FUNC52(sor, sor->soc->regs->head_state0 + dc->pipe);
	value &= ~SOR_HEAD_STATE_COLORSPACE_MASK;
	value |= SOR_HEAD_STATE_COLORSPACE_RGB;
	FUNC56(sor, value, sor->soc->regs->head_state0 + dc->pipe);

	FUNC50(sor, mode, state);

	FUNC54(sor);

	/* program preamble timing in SOR (XXX) */
	value = FUNC52(sor, SOR_DP_SPARE0);
	value &= ~SOR_DP_SPARE_DISP_VIDEO_PREAMBLE;
	FUNC56(sor, value, SOR_DP_SPARE0);

	err = FUNC44(sor);
	if (err < 0)
		FUNC37(sor->dev, "failed to attach SOR: %d\n", err);

	/* enable display to SOR clock and generate HDMI preamble */
	value = FUNC41(dc, DC_DISP_DISP_WIN_OPTIONS);

	if (!sor->soc->has_nvdisplay)
		value |= FUNC7(1) | SOR1_TIMING_CYA;
	else
		value |= FUNC7(sor->index);

	FUNC42(dc, value, DC_DISP_DISP_WIN_OPTIONS);

	if (dc->soc->has_nvdisplay) {
		value = FUNC41(dc, FUNC0(sor->index));
		value &= ~PROTOCOL_MASK;
		value |= PROTOCOL_SINGLE_TMDS_A;
		FUNC42(dc, value, FUNC0(sor->index));
	}

	FUNC40(dc);

	err = FUNC55(sor);
	if (err < 0)
		FUNC37(sor->dev, "failed to wakeup SOR: %d\n", err);

	FUNC48(sor);
	FUNC45(sor);
}