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
typedef  unsigned int u64 ;
struct phy_configure_opts_mipi_dphy {scalar_t__ hs_clk_rate; } ;
struct drm_display_mode {int crtc_clock; unsigned int clock; } ;
struct TYPE_4__ {struct phy_configure_opts_mipi_dphy mipi_dphy; } ;
struct cdns_dsi_output {TYPE_1__* dev; TYPE_2__ phy_opts; } ;
struct cdns_dsi_cfg {unsigned long hbp; scalar_t__ hsa; } ;
struct cdns_dsi {int /*<<< orphan*/  dphy; struct cdns_dsi_output output; } ;
struct TYPE_3__ {unsigned int lanes; int mode_flags; int /*<<< orphan*/  format; } ;

/* Variables and functions */
 unsigned long DSI_HBP_FRAME_OVERHEAD ; 
 scalar_t__ DSI_HSA_FRAME_OVERHEAD ; 
 int EINVAL ; 
 int MIPI_DSI_MODE_VIDEO_SYNC_PULSE ; 
 int /*<<< orphan*/  PHY_MODE_MIPI_DPHY ; 
 int FUNC0 (struct cdns_dsi*,struct cdns_dsi_cfg*,struct phy_configure_opts_mipi_dphy*,struct drm_display_mode const*,int) ; 
 int FUNC1 (struct cdns_dsi*,struct drm_display_mode const*,struct cdns_dsi_cfg*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct drm_display_mode const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,unsigned int,struct phy_configure_opts_mipi_dphy*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static int FUNC6(struct cdns_dsi *dsi,
			       const struct drm_display_mode *mode,
			       struct cdns_dsi_cfg *dsi_cfg,
			       bool mode_valid_check)
{
	struct cdns_dsi_output *output = &dsi->output;
	struct phy_configure_opts_mipi_dphy *phy_cfg = &output->phy_opts.mipi_dphy;
	unsigned long dsi_hss_hsa_hse_hbp;
	unsigned int nlanes = output->dev->lanes;
	int ret;

	ret = FUNC1(dsi, mode, dsi_cfg, mode_valid_check);
	if (ret)
		return ret;

	FUNC4(mode->crtc_clock * 1000,
					 FUNC2(output->dev->format),
					 nlanes, phy_cfg);

	ret = FUNC0(dsi, dsi_cfg, phy_cfg, mode, mode_valid_check);
	if (ret)
		return ret;

	ret = FUNC5(dsi->dphy, PHY_MODE_MIPI_DPHY, 0, &output->phy_opts);
	if (ret)
		return ret;

	dsi_hss_hsa_hse_hbp = dsi_cfg->hbp + DSI_HBP_FRAME_OVERHEAD;
	if (output->dev->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE)
		dsi_hss_hsa_hse_hbp += dsi_cfg->hsa + DSI_HSA_FRAME_OVERHEAD;

	/*
	 * Make sure DPI(HFP) > DSI(HSS+HSA+HSE+HBP) to guarantee that the FIFO
	 * is empty before we start a receiving a new line on the DPI
	 * interface.
	 */
	if ((u64)phy_cfg->hs_clk_rate *
	    FUNC3(mode, mode_valid_check) * nlanes <
	    (u64)dsi_hss_hsa_hse_hbp *
	    (mode_valid_check ? mode->clock : mode->crtc_clock) * 1000)
		return -EINVAL;

	return 0;
}