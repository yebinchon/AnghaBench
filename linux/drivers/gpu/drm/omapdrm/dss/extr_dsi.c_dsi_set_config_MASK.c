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
struct omap_dss_dsi_config {scalar_t__ mode; int /*<<< orphan*/  lp_clk_max; int /*<<< orphan*/  lp_clk_min; int /*<<< orphan*/  pixel_format; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/ * clkout; } ;
struct dsi_data {scalar_t__ mode; int /*<<< orphan*/  lock; int /*<<< orphan*/  vm_timings; TYPE_1__ vm; int /*<<< orphan*/  output; int /*<<< orphan*/  user_dispc_cinfo; TYPE_2__ user_dsi_cinfo; int /*<<< orphan*/  user_lp_cinfo; int /*<<< orphan*/  pix_fmt; } ;
struct dsi_clk_calc_ctx {int /*<<< orphan*/  dsi_vm; TYPE_1__ vm; int /*<<< orphan*/  dispc_cinfo; TYPE_2__ dsi_cinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISPLAY_FLAGS_DE_HIGH ; 
 int /*<<< orphan*/  DISPLAY_FLAGS_DE_LOW ; 
 int /*<<< orphan*/  DISPLAY_FLAGS_HSYNC_HIGH ; 
 int /*<<< orphan*/  DISPLAY_FLAGS_HSYNC_LOW ; 
 int /*<<< orphan*/  DISPLAY_FLAGS_INTERLACED ; 
 int /*<<< orphan*/  DISPLAY_FLAGS_PIXDATA_NEGEDGE ; 
 int /*<<< orphan*/  DISPLAY_FLAGS_PIXDATA_POSEDGE ; 
 int /*<<< orphan*/  DISPLAY_FLAGS_SYNC_NEGEDGE ; 
 int /*<<< orphan*/  DISPLAY_FLAGS_SYNC_POSEDGE ; 
 int /*<<< orphan*/  DISPLAY_FLAGS_VSYNC_HIGH ; 
 int /*<<< orphan*/  DISPLAY_FLAGS_VSYNC_LOW ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 size_t HSDIV_DSI ; 
 scalar_t__ OMAP_DSS_DSI_VIDEO_MODE ; 
 int FUNC1 (struct dsi_data*,struct omap_dss_dsi_config const*,struct dsi_clk_calc_ctx*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dsi_data*,TYPE_2__*) ; 
 int FUNC4 (struct dsi_data*,struct omap_dss_dsi_config const*,struct dsi_clk_calc_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct dsi_data* FUNC8 (struct omap_dss_device*) ; 

__attribute__((used)) static int FUNC9(struct omap_dss_device *dssdev,
		const struct omap_dss_dsi_config *config)
{
	struct dsi_data *dsi = FUNC8(dssdev);
	struct dsi_clk_calc_ctx ctx;
	bool ok;
	int r;

	FUNC6(&dsi->lock);

	dsi->pix_fmt = config->pixel_format;
	dsi->mode = config->mode;

	if (config->mode == OMAP_DSS_DSI_VIDEO_MODE)
		ok = FUNC4(dsi, config, &ctx);
	else
		ok = FUNC1(dsi, config, &ctx);

	if (!ok) {
		FUNC0("failed to find suitable DSI clock settings\n");
		r = -EINVAL;
		goto err;
	}

	FUNC3(dsi, &ctx.dsi_cinfo);

	r = FUNC2(ctx.dsi_cinfo.clkout[HSDIV_DSI],
		config->lp_clk_min, config->lp_clk_max, &dsi->user_lp_cinfo);
	if (r) {
		FUNC0("failed to find suitable DSI LP clock settings\n");
		goto err;
	}

	dsi->user_dsi_cinfo = ctx.dsi_cinfo;
	dsi->user_dispc_cinfo = ctx.dispc_cinfo;

	dsi->vm = ctx.vm;

	/*
	 * override interlace, logic level and edge related parameters in
	 * videomode with default values
	 */
	dsi->vm.flags &= ~DISPLAY_FLAGS_INTERLACED;
	dsi->vm.flags &= ~DISPLAY_FLAGS_HSYNC_LOW;
	dsi->vm.flags |= DISPLAY_FLAGS_HSYNC_HIGH;
	dsi->vm.flags &= ~DISPLAY_FLAGS_VSYNC_LOW;
	dsi->vm.flags |= DISPLAY_FLAGS_VSYNC_HIGH;
	/*
	 * HACK: These flags should be handled through the omap_dss_device bus
	 * flags, but this will only be possible when the DSI encoder will be
	 * converted to the omapdrm-managed encoder model.
	 */
	dsi->vm.flags &= ~DISPLAY_FLAGS_PIXDATA_NEGEDGE;
	dsi->vm.flags |= DISPLAY_FLAGS_PIXDATA_POSEDGE;
	dsi->vm.flags &= ~DISPLAY_FLAGS_DE_LOW;
	dsi->vm.flags |= DISPLAY_FLAGS_DE_HIGH;
	dsi->vm.flags &= ~DISPLAY_FLAGS_SYNC_POSEDGE;
	dsi->vm.flags |= DISPLAY_FLAGS_SYNC_NEGEDGE;

	FUNC5(&dsi->output, &dsi->vm);

	dsi->vm_timings = ctx.dsi_vm;

	FUNC7(&dsi->lock);

	return 0;
err:
	FUNC7(&dsi->lock);

	return r;
}