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
typedef  int u64 ;
typedef  unsigned long u32 ;
struct phy_configure_opts_mipi_dphy {unsigned long hs_prepare; unsigned long hs_zero; int /*<<< orphan*/  hs_clk_rate; } ;
struct drm_display_mode {unsigned long crtc_vdisplay; scalar_t__ crtc_vsync_start; scalar_t__ crtc_vsync_end; scalar_t__ crtc_vtotal; } ;
struct drm_bridge {TYPE_4__* encoder; } ;
struct TYPE_7__ {struct phy_configure_opts_mipi_dphy mipi_dphy; } ;
struct cdns_dsi_output {TYPE_6__* dev; TYPE_1__ phy_opts; } ;
struct cdns_dsi_input {int /*<<< orphan*/  id; } ;
struct cdns_dsi_cfg {unsigned long hsa; unsigned long htotal; int /*<<< orphan*/  hact; int /*<<< orphan*/  hfp; int /*<<< orphan*/  hbp; } ;
struct TYPE_11__ {int /*<<< orphan*/  dev; } ;
struct cdns_dsi {scalar_t__ regs; TYPE_5__ base; struct cdns_dsi_output output; } ;
struct TYPE_12__ {int format; int lanes; int mode_flags; } ;
struct TYPE_10__ {TYPE_3__* crtc; } ;
struct TYPE_9__ {TYPE_2__* state; } ;
struct TYPE_8__ {struct drm_display_mode adjusted_mode; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (unsigned long) ; 
 unsigned long CLK_DIV_MAX ; 
 unsigned long FUNC3 (int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (unsigned long,int) ; 
 unsigned long DSI_BLANKING_FRAME_OVERHEAD ; 
 unsigned long DSI_EOT_PKT_SIZE ; 
 unsigned long DSI_HSA_FRAME_OVERHEAD ; 
 unsigned long DSI_HSS_VSS_VSE_FRAME_OVERHEAD ; 
 scalar_t__ DSI_NULL_FRAME_OVERHEAD ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned long HOST_EOT_GEN ; 
 unsigned long FUNC8 (unsigned long) ; 
 unsigned long FUNC9 (unsigned long) ; 
 unsigned long HSTX_TIMEOUT_MAX ; 
 unsigned long FUNC10 (int /*<<< orphan*/ ) ; 
 unsigned long IF_VID_MODE ; 
 unsigned long FUNC11 (int /*<<< orphan*/ ) ; 
 unsigned long IF_VID_SELECT_MASK ; 
 unsigned long FUNC12 (unsigned long) ; 
 unsigned long FUNC13 (scalar_t__) ; 
 scalar_t__ MCTL_DPHY_TIMEOUT1 ; 
 scalar_t__ MCTL_DPHY_TIMEOUT2 ; 
 scalar_t__ MCTL_MAIN_DATA_CTL ; 
 scalar_t__ MCTL_MAIN_EN ; 
#define  MIPI_DSI_FMT_RGB565 131 
#define  MIPI_DSI_FMT_RGB666 130 
#define  MIPI_DSI_FMT_RGB666_PACKED 129 
#define  MIPI_DSI_FMT_RGB888 128 
 int MIPI_DSI_MODE_EOT_PACKET ; 
 int MIPI_DSI_MODE_VIDEO ; 
 int MIPI_DSI_MODE_VIDEO_SYNC_PULSE ; 
 int /*<<< orphan*/  MIPI_DSI_PACKED_PIXEL_STREAM_16 ; 
 int /*<<< orphan*/  MIPI_DSI_PACKED_PIXEL_STREAM_18 ; 
 int /*<<< orphan*/  MIPI_DSI_PACKED_PIXEL_STREAM_24 ; 
 int /*<<< orphan*/  MIPI_DSI_PIXEL_STREAM_3BYTE_18 ; 
 unsigned long NSEC_PER_SEC ; 
 unsigned long FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RECOVERY_MODE_NEXT_HSYNC ; 
 unsigned long FUNC15 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_BLK_MODE_BLANKING_PKT ; 
 unsigned long FUNC17 (unsigned long) ; 
 unsigned long FUNC18 (unsigned long) ; 
 unsigned long SYNC_PULSE_ACTIVE ; 
 unsigned long SYNC_PULSE_HORIZONTAL ; 
 unsigned long FUNC19 (scalar_t__) ; 
 unsigned long FUNC20 (scalar_t__) ; 
 scalar_t__ VID_BLKSIZE1 ; 
 scalar_t__ VID_BLKSIZE2 ; 
 unsigned long FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ VID_DPHY_TIME ; 
 unsigned long VID_EN ; 
 scalar_t__ VID_HSIZE1 ; 
 scalar_t__ VID_HSIZE2 ; 
 unsigned long VID_IGNORE_MISS_VSYNC ; 
 scalar_t__ VID_MAIN_CTL ; 
 unsigned long VID_PIXEL_MODE_RGB565 ; 
 unsigned long VID_PIXEL_MODE_RGB666 ; 
 unsigned long VID_PIXEL_MODE_RGB666_PACKED ; 
 unsigned long VID_PIXEL_MODE_RGB888 ; 
 scalar_t__ VID_VCA_SETTING2 ; 
 scalar_t__ VID_VSIZE1 ; 
 scalar_t__ VID_VSIZE2 ; 
 unsigned long FUNC22 (scalar_t__) ; 
 scalar_t__ FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 struct cdns_dsi_input* FUNC25 (struct drm_bridge*) ; 
 int /*<<< orphan*/  FUNC26 (struct cdns_dsi*,struct drm_display_mode*,struct cdns_dsi_cfg*,int) ; 
 int /*<<< orphan*/  FUNC27 (struct cdns_dsi*) ; 
 int /*<<< orphan*/  FUNC28 (struct cdns_dsi*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,char*) ; 
 unsigned long FUNC30 (struct drm_display_mode*) ; 
 struct cdns_dsi* FUNC31 (struct cdns_dsi_input*) ; 
 int FUNC32 (int) ; 
 scalar_t__ FUNC33 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC34 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC35 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC36(struct drm_bridge *bridge)
{
	struct cdns_dsi_input *input = FUNC25(bridge);
	struct cdns_dsi *dsi = FUNC31(input);
	struct cdns_dsi_output *output = &dsi->output;
	struct drm_display_mode *mode;
	struct phy_configure_opts_mipi_dphy *phy_cfg = &output->phy_opts.mipi_dphy;
	unsigned long tx_byte_period;
	struct cdns_dsi_cfg dsi_cfg;
	u32 tmp, reg_wakeup, div;
	int bpp, nlanes;

	if (FUNC23(FUNC33(dsi->base.dev) < 0))
		return;

	mode = &bridge->encoder->crtc->state->adjusted_mode;
	bpp = FUNC32(output->dev->format);
	nlanes = output->dev->lanes;

	FUNC24(FUNC26(dsi, mode, &dsi_cfg, false));

	FUNC27(dsi);
	FUNC28(dsi);

	FUNC35(FUNC6(dsi_cfg.hbp) | FUNC8(dsi_cfg.hsa),
	       dsi->regs + VID_HSIZE1);
	FUNC35(FUNC7(dsi_cfg.hfp) | FUNC5(dsi_cfg.hact),
	       dsi->regs + VID_HSIZE2);

	FUNC35(FUNC19(mode->crtc_vtotal - mode->crtc_vsync_end - 1) |
	       FUNC20(mode->crtc_vsync_start - mode->crtc_vdisplay) |
	       FUNC22(mode->crtc_vsync_end - mode->crtc_vsync_start + 1),
	       dsi->regs + VID_VSIZE1);
	FUNC35(mode->crtc_vdisplay, dsi->regs + VID_VSIZE2);

	tmp = dsi_cfg.htotal -
	      (dsi_cfg.hsa + DSI_BLANKING_FRAME_OVERHEAD +
	       DSI_HSA_FRAME_OVERHEAD);
	FUNC35(FUNC1(tmp), dsi->regs + VID_BLKSIZE2);
	if (output->dev->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE)
		FUNC35(FUNC13(tmp - DSI_NULL_FRAME_OVERHEAD),
		       dsi->regs + VID_VCA_SETTING2);

	tmp = dsi_cfg.htotal -
	      (DSI_HSS_VSS_VSE_FRAME_OVERHEAD + DSI_BLANKING_FRAME_OVERHEAD);
	FUNC35(FUNC0(tmp), dsi->regs + VID_BLKSIZE1);
	if (!(output->dev->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE))
		FUNC35(FUNC13(tmp - DSI_NULL_FRAME_OVERHEAD),
		       dsi->regs + VID_VCA_SETTING2);

	tmp = FUNC4(dsi_cfg.htotal, nlanes) -
	      FUNC4(dsi_cfg.hsa, nlanes);

	if (!(output->dev->mode_flags & MIPI_DSI_MODE_EOT_PACKET))
		tmp -= FUNC4(DSI_EOT_PKT_SIZE, nlanes);

	tx_byte_period = FUNC3((u64)NSEC_PER_SEC * 8,
					    phy_cfg->hs_clk_rate);
	reg_wakeup = (phy_cfg->hs_prepare + phy_cfg->hs_zero) / tx_byte_period;
	FUNC35(FUNC18(reg_wakeup) | FUNC17(tmp),
	       dsi->regs + VID_DPHY_TIME);

	/*
	 * HSTX and LPRX timeouts are both expressed in TX byte clk cycles and
	 * both should be set to at least the time it takes to transmit a
	 * frame.
	 */
	tmp = NSEC_PER_SEC / FUNC30(mode);
	tmp /= tx_byte_period;

	for (div = 0; div <= CLK_DIV_MAX; div++) {
		if (tmp <= HSTX_TIMEOUT_MAX)
			break;

		tmp >>= 1;
	}

	if (tmp > HSTX_TIMEOUT_MAX)
		tmp = HSTX_TIMEOUT_MAX;

	FUNC35(FUNC2(div) | FUNC9(tmp),
	       dsi->regs + MCTL_DPHY_TIMEOUT1);

	FUNC35(FUNC12(tmp), dsi->regs + MCTL_DPHY_TIMEOUT2);

	if (output->dev->mode_flags & MIPI_DSI_MODE_VIDEO) {
		switch (output->dev->format) {
		case MIPI_DSI_FMT_RGB888:
			tmp = VID_PIXEL_MODE_RGB888 |
			      FUNC21(MIPI_DSI_PACKED_PIXEL_STREAM_24);
			break;

		case MIPI_DSI_FMT_RGB666:
			tmp = VID_PIXEL_MODE_RGB666 |
			      FUNC21(MIPI_DSI_PIXEL_STREAM_3BYTE_18);
			break;

		case MIPI_DSI_FMT_RGB666_PACKED:
			tmp = VID_PIXEL_MODE_RGB666_PACKED |
			      FUNC21(MIPI_DSI_PACKED_PIXEL_STREAM_18);
			break;

		case MIPI_DSI_FMT_RGB565:
			tmp = VID_PIXEL_MODE_RGB565 |
			      FUNC21(MIPI_DSI_PACKED_PIXEL_STREAM_16);
			break;

		default:
			FUNC29(dsi->base.dev, "Unsupported DSI format\n");
			return;
		}

		if (output->dev->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE)
			tmp |= SYNC_PULSE_ACTIVE | SYNC_PULSE_HORIZONTAL;

		tmp |= FUNC16(REG_BLK_MODE_BLANKING_PKT) |
		       FUNC15(REG_BLK_MODE_BLANKING_PKT) |
		       FUNC14(RECOVERY_MODE_NEXT_HSYNC) |
		       VID_IGNORE_MISS_VSYNC;

		FUNC35(tmp, dsi->regs + VID_MAIN_CTL);
	}

	tmp = FUNC34(dsi->regs + MCTL_MAIN_DATA_CTL);
	tmp &= ~(IF_VID_SELECT_MASK | HOST_EOT_GEN | IF_VID_MODE);

	if (!(output->dev->mode_flags & MIPI_DSI_MODE_EOT_PACKET))
		tmp |= HOST_EOT_GEN;

	if (output->dev->mode_flags & MIPI_DSI_MODE_VIDEO)
		tmp |= IF_VID_MODE | FUNC11(input->id) | VID_EN;

	FUNC35(tmp, dsi->regs + MCTL_MAIN_DATA_CTL);

	tmp = FUNC34(dsi->regs + MCTL_MAIN_EN) | FUNC10(input->id);
	FUNC35(tmp, dsi->regs + MCTL_MAIN_EN);
}