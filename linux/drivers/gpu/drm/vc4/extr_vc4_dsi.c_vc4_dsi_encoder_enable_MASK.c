#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct vc4_dsi_encoder {struct vc4_dsi* dsi; } ;
struct vc4_dsi {int port; unsigned long divider; int lanes; int mode_flags; int format; int /*<<< orphan*/  regset; TYPE_3__* pdev; int /*<<< orphan*/  bridge; int /*<<< orphan*/  pixel_clock; int /*<<< orphan*/  pll_phy_clock; int /*<<< orphan*/  escape_clock; } ;
struct drm_printer {int dummy; } ;
struct drm_encoder {TYPE_2__* crtc; } ;
struct drm_display_mode {int clock; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct device dev; } ;
struct TYPE_5__ {TYPE_1__* state; } ;
struct TYPE_4__ {struct drm_display_mode adjusted_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  CTRL_RESET_FIFOS ; 
 int /*<<< orphan*/  DISP0_CTRL ; 
 int /*<<< orphan*/  DISP1_CTRL ; 
 int FUNC0 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int DSI0_CTRL_CTRL0 ; 
 int /*<<< orphan*/  DSI0_PHYC_ESC_CLK_LPDT ; 
 int DSI0_PHY_AFEC0_PD_DLANE1 ; 
 int DSI0_PHY_AFEC0_RESET ; 
 int /*<<< orphan*/  DSI0_PHY_AFEC1_IDR_CLANE ; 
 int /*<<< orphan*/  DSI0_PHY_AFEC1_IDR_DLANE0 ; 
 int /*<<< orphan*/  DSI0_PHY_AFEC1_IDR_DLANE1 ; 
 int DSI1_CTRL_EN ; 
 int /*<<< orphan*/  DSI1_PHYC_ESC_CLK_LPDT ; 
 int /*<<< orphan*/  DSI1_PHY_AFEC0_IDR_CLANE ; 
 int /*<<< orphan*/  DSI1_PHY_AFEC0_IDR_DLANE0 ; 
 int /*<<< orphan*/  DSI1_PHY_AFEC0_IDR_DLANE1 ; 
 int /*<<< orphan*/  DSI1_PHY_AFEC0_IDR_DLANE2 ; 
 int /*<<< orphan*/  DSI1_PHY_AFEC0_IDR_DLANE3 ; 
 int DSI1_PHY_AFEC0_PD_DLANE1 ; 
 int DSI1_PHY_AFEC0_PD_DLANE2 ; 
 int DSI1_PHY_AFEC0_PD_DLANE3 ; 
 int DSI1_PHY_AFEC0_RESET ; 
 int DSI_CTRL_CAL_BYTE ; 
 int DSI_CTRL_HSDT_EOT_DISABLE ; 
 int DSI_CTRL_RX_LPDT_EOT_DISABLE ; 
 int DSI_CTRL_SOFT_RESET_CFG ; 
 int DSI_DISP0_COMMAND_MODE ; 
 int DSI_DISP0_ENABLE ; 
 int /*<<< orphan*/  DSI_DISP0_LP_STOP_CTRL ; 
 int DSI_DISP0_LP_STOP_PERFRAME ; 
 int /*<<< orphan*/  DSI_DISP0_PFORMAT ; 
 int /*<<< orphan*/  DSI_DISP0_PIX_CLK_DIV ; 
 int DSI_DISP0_ST_END ; 
 int DSI_DISP1_ENABLE ; 
 int /*<<< orphan*/  DSI_DISP1_PFORMAT ; 
 int DSI_DISP1_PFORMAT_32BIT_LE ; 
 int /*<<< orphan*/  DSI_HS_CLT0_CPRE ; 
 int /*<<< orphan*/  DSI_HS_CLT0_CPREP ; 
 int /*<<< orphan*/  DSI_HS_CLT0_CZERO ; 
 int /*<<< orphan*/  DSI_HS_CLT1_CPOST ; 
 int /*<<< orphan*/  DSI_HS_CLT1_CTRAIL ; 
 int /*<<< orphan*/  DSI_HS_CLT2_WUP ; 
 int /*<<< orphan*/  DSI_HS_DLT3_EXIT ; 
 int /*<<< orphan*/  DSI_HS_DLT3_PRE ; 
 int /*<<< orphan*/  DSI_HS_DLT3_ZERO ; 
 int /*<<< orphan*/  DSI_HS_DLT4_ANLAT ; 
 int /*<<< orphan*/  DSI_HS_DLT4_LPX ; 
 int /*<<< orphan*/  DSI_HS_DLT4_TRAIL ; 
 int /*<<< orphan*/  DSI_HS_DLT5_INIT ; 
 int /*<<< orphan*/  DSI_HS_DLT6_LP_LPX ; 
 int /*<<< orphan*/  DSI_HS_DLT6_TA_GET ; 
 int /*<<< orphan*/  DSI_HS_DLT6_TA_GO ; 
 int /*<<< orphan*/  DSI_HS_DLT6_TA_SURE ; 
 int /*<<< orphan*/  DSI_HS_DLT7_LP_WUP ; 
 int DSI_PHYC_DLANE0_ENABLE ; 
 int DSI_PHYC_DLANE1_ENABLE ; 
 int DSI_PHYC_DLANE2_ENABLE ; 
 int DSI_PHYC_DLANE3_ENABLE ; 
 int /*<<< orphan*/  DSI_PHY_AFEC0_CTATADJ ; 
 int /*<<< orphan*/  DSI_PHY_AFEC0_PTATADJ ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int ESC_TIME_NS ; 
 int /*<<< orphan*/  HSTX_TO_CNT ; 
 int /*<<< orphan*/  HS_CLT0 ; 
 int /*<<< orphan*/  HS_CLT1 ; 
 int /*<<< orphan*/  HS_CLT2 ; 
 int /*<<< orphan*/  HS_DLT3 ; 
 int /*<<< orphan*/  HS_DLT4 ; 
 int /*<<< orphan*/  HS_DLT5 ; 
 int /*<<< orphan*/  HS_DLT6 ; 
 int /*<<< orphan*/  HS_DLT7 ; 
 int /*<<< orphan*/  LPRX_TO_CNT ; 
 int MIPI_DSI_CLOCK_NON_CONTINUOUS ; 
 int MIPI_DSI_MODE_VIDEO ; 
 int /*<<< orphan*/  PHYC ; 
 int /*<<< orphan*/  PHYC_CLANE_ENABLE ; 
 int /*<<< orphan*/  PHYC_HS_CLK_CONTINUOUS ; 
 int /*<<< orphan*/  PHY_AFEC0 ; 
 int /*<<< orphan*/  PHY_AFEC1 ; 
 int /*<<< orphan*/  PR_TO_CNT ; 
 int /*<<< orphan*/  STAT ; 
 int /*<<< orphan*/  TA_TO_CNT ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct drm_printer FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_printer*,int /*<<< orphan*/ *) ; 
 int FUNC15 (int) ; 
 int FUNC16 (int,int,int) ; 
 int FUNC17 (int,int) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int FUNC19 (struct device*) ; 
 struct vc4_dsi_encoder* FUNC20 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC21 (struct vc4_dsi*,int) ; 

__attribute__((used)) static void FUNC22(struct drm_encoder *encoder)
{
	struct drm_display_mode *mode = &encoder->crtc->state->adjusted_mode;
	struct vc4_dsi_encoder *vc4_encoder = FUNC20(encoder);
	struct vc4_dsi *dsi = vc4_encoder->dsi;
	struct device *dev = &dsi->pdev->dev;
	bool debug_dump_regs = false;
	unsigned long hs_clock;
	u32 ui_ns;
	/* Minimum LP state duration in escape clock cycles. */
	u32 lpx = FUNC15(60);
	unsigned long pixel_clock_hz = mode->clock * 1000;
	unsigned long dsip_clock;
	unsigned long phy_clock;
	int ret;

	ret = FUNC19(dev);
	if (ret) {
		FUNC1("Failed to runtime PM enable on DSI%d\n", dsi->port);
		return;
	}

	if (debug_dump_regs) {
		struct drm_printer p = FUNC13(&dsi->pdev->dev);
		FUNC10(&dsi->pdev->dev, "DSI regs before:\n");
		FUNC14(&p, &dsi->regset);
	}

	/* Round up the clk_set_rate() request slightly, since
	 * PLLD_DSI1 is an integer divider and its rate selection will
	 * never round up.
	 */
	phy_clock = (pixel_clock_hz + 1000) * dsi->divider;
	ret = FUNC8(dsi->pll_phy_clock, phy_clock);
	if (ret) {
		FUNC9(&dsi->pdev->dev,
			"Failed to set phy clock to %ld: %d\n", phy_clock, ret);
	}

	/* Reset the DSI and all its fifos. */
	FUNC4(CTRL,
		       DSI_CTRL_SOFT_RESET_CFG |
		       FUNC2(CTRL_RESET_FIFOS));

	FUNC4(CTRL,
		       DSI_CTRL_HSDT_EOT_DISABLE |
		       DSI_CTRL_RX_LPDT_EOT_DISABLE);

	/* Clear all stat bits so we see what has happened during enable. */
	FUNC4(STAT, FUNC3(STAT));

	/* Set AFE CTR00/CTR1 to release powerdown of analog. */
	if (dsi->port == 0) {
		u32 afec0 = (FUNC5(7, DSI_PHY_AFEC0_PTATADJ) |
			     FUNC5(7, DSI_PHY_AFEC0_CTATADJ));

		if (dsi->lanes < 2)
			afec0 |= DSI0_PHY_AFEC0_PD_DLANE1;

		if (!(dsi->mode_flags & MIPI_DSI_MODE_VIDEO))
			afec0 |= DSI0_PHY_AFEC0_RESET;

		FUNC4(PHY_AFEC0, afec0);

		FUNC4(PHY_AFEC1,
			       FUNC5(6,  DSI0_PHY_AFEC1_IDR_DLANE1) |
			       FUNC5(6,  DSI0_PHY_AFEC1_IDR_DLANE0) |
			       FUNC5(6,  DSI0_PHY_AFEC1_IDR_CLANE));
	} else {
		u32 afec0 = (FUNC5(7, DSI_PHY_AFEC0_PTATADJ) |
			     FUNC5(7, DSI_PHY_AFEC0_CTATADJ) |
			     FUNC5(6, DSI1_PHY_AFEC0_IDR_CLANE) |
			     FUNC5(6, DSI1_PHY_AFEC0_IDR_DLANE0) |
			     FUNC5(6, DSI1_PHY_AFEC0_IDR_DLANE1) |
			     FUNC5(6, DSI1_PHY_AFEC0_IDR_DLANE2) |
			     FUNC5(6, DSI1_PHY_AFEC0_IDR_DLANE3));

		if (dsi->lanes < 4)
			afec0 |= DSI1_PHY_AFEC0_PD_DLANE3;
		if (dsi->lanes < 3)
			afec0 |= DSI1_PHY_AFEC0_PD_DLANE2;
		if (dsi->lanes < 2)
			afec0 |= DSI1_PHY_AFEC0_PD_DLANE1;

		afec0 |= DSI1_PHY_AFEC0_RESET;

		FUNC4(PHY_AFEC0, afec0);

		FUNC4(PHY_AFEC1, 0);

		/* AFEC reset hold time */
		FUNC18(1);
	}

	ret = FUNC7(dsi->escape_clock);
	if (ret) {
		FUNC1("Failed to turn on DSI escape clock: %d\n", ret);
		return;
	}

	ret = FUNC7(dsi->pll_phy_clock);
	if (ret) {
		FUNC1("Failed to turn on DSI PLL: %d\n", ret);
		return;
	}

	hs_clock = FUNC6(dsi->pll_phy_clock);

	/* Yes, we set the DSI0P/DSI1P pixel clock to the byte rate,
	 * not the pixel clock rate.  DSIxP take from the APHY's byte,
	 * DDR2, or DDR4 clock (we use byte) and feed into the PV at
	 * that rate.  Separately, a value derived from PIX_CLK_DIV
	 * and HS_CLKC is fed into the PV to divide down to the actual
	 * pixel clock for pushing pixels into DSI.
	 */
	dsip_clock = phy_clock / 8;
	ret = FUNC8(dsi->pixel_clock, dsip_clock);
	if (ret) {
		FUNC9(dev, "Failed to set pixel clock to %ldHz: %d\n",
			dsip_clock, ret);
	}

	ret = FUNC7(dsi->pixel_clock);
	if (ret) {
		FUNC1("Failed to turn on DSI pixel clock: %d\n", ret);
		return;
	}

	/* How many ns one DSI unit interval is.  Note that the clock
	 * is DDR, so there's an extra divide by 2.
	 */
	ui_ns = FUNC0(500000000, hs_clock);

	FUNC4(HS_CLT0,
		       FUNC5(FUNC16(ui_ns, 262, 0),
				     DSI_HS_CLT0_CZERO) |
		       FUNC5(FUNC16(ui_ns, 0, 8),
				     DSI_HS_CLT0_CPRE) |
		       FUNC5(FUNC16(ui_ns, 38, 0),
				     DSI_HS_CLT0_CPREP));

	FUNC4(HS_CLT1,
		       FUNC5(FUNC16(ui_ns, 60, 0),
				     DSI_HS_CLT1_CTRAIL) |
		       FUNC5(FUNC16(ui_ns, 60, 52),
				     DSI_HS_CLT1_CPOST));

	FUNC4(HS_CLT2,
		       FUNC5(FUNC16(ui_ns, 1000000, 0),
				     DSI_HS_CLT2_WUP));

	FUNC4(HS_DLT3,
		       FUNC5(FUNC16(ui_ns, 100, 0),
				     DSI_HS_DLT3_EXIT) |
		       FUNC5(FUNC16(ui_ns, 105, 6),
				     DSI_HS_DLT3_ZERO) |
		       FUNC5(FUNC16(ui_ns, 40, 4),
				     DSI_HS_DLT3_PRE));

	FUNC4(HS_DLT4,
		       FUNC5(FUNC16(ui_ns, lpx * ESC_TIME_NS, 0),
				     DSI_HS_DLT4_LPX) |
		       FUNC5(FUNC17(FUNC16(ui_ns, 0, 8),
					 FUNC16(ui_ns, 60, 4)),
				     DSI_HS_DLT4_TRAIL) |
		       FUNC5(0, DSI_HS_DLT4_ANLAT));

	/* T_INIT is how long STOP is driven after power-up to
	 * indicate to the slave (also coming out of power-up) that
	 * master init is complete, and should be greater than the
	 * maximum of two value: T_INIT,MASTER and T_INIT,SLAVE.  The
	 * D-PHY spec gives a minimum 100us for T_INIT,MASTER and
	 * T_INIT,SLAVE, while allowing protocols on top of it to give
	 * greater minimums.  The vc4 firmware uses an extremely
	 * conservative 5ms, and we maintain that here.
	 */
	FUNC4(HS_DLT5, FUNC5(FUNC16(ui_ns,
							    5 * 1000 * 1000, 0),
					      DSI_HS_DLT5_INIT));

	FUNC4(HS_DLT6,
		       FUNC5(lpx * 5, DSI_HS_DLT6_TA_GET) |
		       FUNC5(lpx, DSI_HS_DLT6_TA_SURE) |
		       FUNC5(lpx * 4, DSI_HS_DLT6_TA_GO) |
		       FUNC5(lpx, DSI_HS_DLT6_LP_LPX));

	FUNC4(HS_DLT7,
		       FUNC5(FUNC15(1000000),
				     DSI_HS_DLT7_LP_WUP));

	FUNC4(PHYC,
		       DSI_PHYC_DLANE0_ENABLE |
		       (dsi->lanes >= 2 ? DSI_PHYC_DLANE1_ENABLE : 0) |
		       (dsi->lanes >= 3 ? DSI_PHYC_DLANE2_ENABLE : 0) |
		       (dsi->lanes >= 4 ? DSI_PHYC_DLANE3_ENABLE : 0) |
		       FUNC2(PHYC_CLANE_ENABLE) |
		       ((dsi->mode_flags & MIPI_DSI_CLOCK_NON_CONTINUOUS) ?
			0 : FUNC2(PHYC_HS_CLK_CONTINUOUS)) |
		       (dsi->port == 0 ?
			FUNC5(lpx - 1, DSI0_PHYC_ESC_CLK_LPDT) :
			FUNC5(lpx - 1, DSI1_PHYC_ESC_CLK_LPDT)));

	FUNC4(CTRL,
		       FUNC3(CTRL) |
		       DSI_CTRL_CAL_BYTE);

	/* HS timeout in HS clock cycles: disabled. */
	FUNC4(HSTX_TO_CNT, 0);
	/* LP receive timeout in HS clocks. */
	FUNC4(LPRX_TO_CNT, 0xffffff);
	/* Bus turnaround timeout */
	FUNC4(TA_TO_CNT, 100000);
	/* Display reset sequence timeout */
	FUNC4(PR_TO_CNT, 100000);

	/* Set up DISP1 for transferring long command payloads through
	 * the pixfifo.
	 */
	FUNC4(DISP1_CTRL,
		       FUNC5(DSI_DISP1_PFORMAT_32BIT_LE,
				     DSI_DISP1_PFORMAT) |
		       DSI_DISP1_ENABLE);

	/* Ungate the block. */
	if (dsi->port == 0)
		FUNC4(CTRL, FUNC3(CTRL) | DSI0_CTRL_CTRL0);
	else
		FUNC4(CTRL, FUNC3(CTRL) | DSI1_CTRL_EN);

	/* Bring AFE out of reset. */
	if (dsi->port == 0) {
	} else {
		FUNC4(PHY_AFEC0,
			       FUNC3(PHY_AFEC0) &
			       ~DSI1_PHY_AFEC0_RESET);
	}

	FUNC21(dsi, false);

	FUNC12(dsi->bridge);

	if (dsi->mode_flags & MIPI_DSI_MODE_VIDEO) {
		FUNC4(DISP0_CTRL,
			       FUNC5(dsi->divider,
					     DSI_DISP0_PIX_CLK_DIV) |
			       FUNC5(dsi->format, DSI_DISP0_PFORMAT) |
			       FUNC5(DSI_DISP0_LP_STOP_PERFRAME,
					     DSI_DISP0_LP_STOP_CTRL) |
			       DSI_DISP0_ST_END |
			       DSI_DISP0_ENABLE);
	} else {
		FUNC4(DISP0_CTRL,
			       DSI_DISP0_COMMAND_MODE |
			       DSI_DISP0_ENABLE);
	}

	FUNC11(dsi->bridge);

	if (debug_dump_regs) {
		struct drm_printer p = FUNC13(&dsi->pdev->dev);
		FUNC10(&dsi->pdev->dev, "DSI regs after:\n");
		FUNC14(&p, &dsi->regset);
	}
}