
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_dss_dsi_config {scalar_t__ mode; int lp_clk_max; int lp_clk_min; int pixel_format; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {int * clkout; } ;
struct dsi_data {scalar_t__ mode; int lock; int vm_timings; TYPE_1__ vm; int output; int user_dispc_cinfo; TYPE_2__ user_dsi_cinfo; int user_lp_cinfo; int pix_fmt; } ;
struct dsi_clk_calc_ctx {int dsi_vm; TYPE_1__ vm; int dispc_cinfo; TYPE_2__ dsi_cinfo; } ;


 int DISPLAY_FLAGS_DE_HIGH ;
 int DISPLAY_FLAGS_DE_LOW ;
 int DISPLAY_FLAGS_HSYNC_HIGH ;
 int DISPLAY_FLAGS_HSYNC_LOW ;
 int DISPLAY_FLAGS_INTERLACED ;
 int DISPLAY_FLAGS_PIXDATA_NEGEDGE ;
 int DISPLAY_FLAGS_PIXDATA_POSEDGE ;
 int DISPLAY_FLAGS_SYNC_NEGEDGE ;
 int DISPLAY_FLAGS_SYNC_POSEDGE ;
 int DISPLAY_FLAGS_VSYNC_HIGH ;
 int DISPLAY_FLAGS_VSYNC_LOW ;
 int DSSERR (char*) ;
 int EINVAL ;
 size_t HSDIV_DSI ;
 scalar_t__ OMAP_DSS_DSI_VIDEO_MODE ;
 int dsi_cm_calc (struct dsi_data*,struct omap_dss_dsi_config const*,struct dsi_clk_calc_ctx*) ;
 int dsi_lp_clock_calc (int ,int ,int ,int *) ;
 int dsi_pll_calc_dsi_fck (struct dsi_data*,TYPE_2__*) ;
 int dsi_vm_calc (struct dsi_data*,struct omap_dss_dsi_config const*,struct dsi_clk_calc_ctx*) ;
 int dss_mgr_set_timings (int *,TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct dsi_data* to_dsi_data (struct omap_dss_device*) ;

__attribute__((used)) static int dsi_set_config(struct omap_dss_device *dssdev,
  const struct omap_dss_dsi_config *config)
{
 struct dsi_data *dsi = to_dsi_data(dssdev);
 struct dsi_clk_calc_ctx ctx;
 bool ok;
 int r;

 mutex_lock(&dsi->lock);

 dsi->pix_fmt = config->pixel_format;
 dsi->mode = config->mode;

 if (config->mode == OMAP_DSS_DSI_VIDEO_MODE)
  ok = dsi_vm_calc(dsi, config, &ctx);
 else
  ok = dsi_cm_calc(dsi, config, &ctx);

 if (!ok) {
  DSSERR("failed to find suitable DSI clock settings\n");
  r = -EINVAL;
  goto err;
 }

 dsi_pll_calc_dsi_fck(dsi, &ctx.dsi_cinfo);

 r = dsi_lp_clock_calc(ctx.dsi_cinfo.clkout[HSDIV_DSI],
  config->lp_clk_min, config->lp_clk_max, &dsi->user_lp_cinfo);
 if (r) {
  DSSERR("failed to find suitable DSI LP clock settings\n");
  goto err;
 }

 dsi->user_dsi_cinfo = ctx.dsi_cinfo;
 dsi->user_dispc_cinfo = ctx.dispc_cinfo;

 dsi->vm = ctx.vm;





 dsi->vm.flags &= ~DISPLAY_FLAGS_INTERLACED;
 dsi->vm.flags &= ~DISPLAY_FLAGS_HSYNC_LOW;
 dsi->vm.flags |= DISPLAY_FLAGS_HSYNC_HIGH;
 dsi->vm.flags &= ~DISPLAY_FLAGS_VSYNC_LOW;
 dsi->vm.flags |= DISPLAY_FLAGS_VSYNC_HIGH;





 dsi->vm.flags &= ~DISPLAY_FLAGS_PIXDATA_NEGEDGE;
 dsi->vm.flags |= DISPLAY_FLAGS_PIXDATA_POSEDGE;
 dsi->vm.flags &= ~DISPLAY_FLAGS_DE_LOW;
 dsi->vm.flags |= DISPLAY_FLAGS_DE_HIGH;
 dsi->vm.flags &= ~DISPLAY_FLAGS_SYNC_POSEDGE;
 dsi->vm.flags |= DISPLAY_FLAGS_SYNC_NEGEDGE;

 dss_mgr_set_timings(&dsi->output, &dsi->vm);

 dsi->vm_timings = ctx.dsi_vm;

 mutex_unlock(&dsi->lock);

 return 0;
err:
 mutex_unlock(&dsi->lock);

 return r;
}
