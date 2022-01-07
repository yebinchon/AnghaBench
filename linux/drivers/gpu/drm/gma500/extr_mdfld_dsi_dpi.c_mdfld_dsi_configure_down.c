
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdfld_dsi_encoder {int dummy; } ;
struct mdfld_dsi_dpi_output {int dummy; } ;
struct mdfld_dsi_config {struct drm_device* dev; } ;
struct drm_psb_private {int * dpi_panel_on; } ;
struct drm_device {int dev; struct drm_psb_private* dev_private; } ;


 struct mdfld_dsi_dpi_output* MDFLD_DSI_DPI_OUTPUT (struct mdfld_dsi_encoder*) ;
 int dev_err (int ,char*) ;
 int dsi_set_device_ready_state (struct drm_device*,int ,int) ;
 int dsi_set_pipe_plane_enable_state (struct drm_device*,int ,int) ;
 int mdfld_dsi_dpi_shut_down (struct mdfld_dsi_dpi_output*,int) ;
 struct mdfld_dsi_config* mdfld_dsi_encoder_get_config (struct mdfld_dsi_encoder*) ;
 int tc35876x_set_bridge_reset_state (struct drm_device*,int) ;
 int tc35876x_toshiba_bridge_panel_off (struct drm_device*) ;

__attribute__((used)) static void mdfld_dsi_configure_down(struct mdfld_dsi_encoder *dsi_encoder,
        int pipe)
{
 struct mdfld_dsi_dpi_output *dpi_output =
    MDFLD_DSI_DPI_OUTPUT(dsi_encoder);
 struct mdfld_dsi_config *dsi_config =
    mdfld_dsi_encoder_get_config(dsi_encoder);
 struct drm_device *dev = dsi_config->dev;
 struct drm_psb_private *dev_priv = dev->dev_private;

 if (!dev_priv->dpi_panel_on[pipe]) {
  dev_err(dev->dev, "DPI panel is already off\n");
  return;
 }
 tc35876x_toshiba_bridge_panel_off(dev);
 tc35876x_set_bridge_reset_state(dev, 1);
 dsi_set_pipe_plane_enable_state(dev, 0, pipe);
 mdfld_dsi_dpi_shut_down(dpi_output, pipe);
 dsi_set_device_ready_state(dev, 0, pipe);
}
