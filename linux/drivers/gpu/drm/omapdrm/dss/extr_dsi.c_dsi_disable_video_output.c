
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {int dummy; } ;
struct dsi_data {scalar_t__ mode; int output; } ;


 int DSI_VC_CTRL (int) ;
 scalar_t__ OMAP_DSS_DSI_VIDEO_MODE ;
 int REG_FLD_MOD (struct dsi_data*,int ,int ,int,int) ;
 int dsi_display_uninit_dispc (struct dsi_data*) ;
 int dsi_if_enable (struct dsi_data*,int) ;
 int dsi_vc_enable (struct dsi_data*,int,int) ;
 int dss_mgr_disable (int *) ;
 struct dsi_data* to_dsi_data (struct omap_dss_device*) ;

__attribute__((used)) static void dsi_disable_video_output(struct omap_dss_device *dssdev, int channel)
{
 struct dsi_data *dsi = to_dsi_data(dssdev);

 if (dsi->mode == OMAP_DSS_DSI_VIDEO_MODE) {
  dsi_if_enable(dsi, 0);
  dsi_vc_enable(dsi, channel, 0);


  REG_FLD_MOD(dsi, DSI_VC_CTRL(channel), 0, 4, 4);

  dsi_vc_enable(dsi, channel, 1);
  dsi_if_enable(dsi, 1);
 }

 dss_mgr_disable(&dsi->output);

 dsi_display_uninit_dispc(dsi);
}
