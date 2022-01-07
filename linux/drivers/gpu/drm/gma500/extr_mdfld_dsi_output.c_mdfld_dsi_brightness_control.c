
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mdfld_dsi_pkg_sender {TYPE_1__* dev; } ;
struct mdfld_dsi_config {int dummy; } ;
struct drm_psb_private {int mipi_ctrl_display; struct mdfld_dsi_config** dsi_configs; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
struct TYPE_2__ {int dev; } ;


 int DRM_ERROR (char*) ;
 int MDFLD_DSI_BRIGHTNESS_MAX_LEVEL ;
 int TMD_VID ;
 int dev_dbg (int ,char*,int,int) ;
 struct mdfld_dsi_pkg_sender* mdfld_dsi_get_pkg_sender (struct mdfld_dsi_config*) ;
 int mdfld_dsi_send_mcs_short (struct mdfld_dsi_pkg_sender*,int ,int ,int,int) ;
 int mdfld_get_panel_type (struct drm_device*,int ) ;
 int tmd_write_display_brightness ;
 int write_ctrl_display ;
 int write_display_brightness ;

void mdfld_dsi_brightness_control(struct drm_device *dev, int pipe, int level)
{
 struct mdfld_dsi_pkg_sender *sender;
 struct drm_psb_private *dev_priv;
 struct mdfld_dsi_config *dsi_config;
 u32 gen_ctrl_val = 0;
 int p_type = TMD_VID;

 if (!dev || (pipe != 0 && pipe != 2)) {
  DRM_ERROR("Invalid parameter\n");
  return;
 }

 p_type = mdfld_get_panel_type(dev, 0);

 dev_priv = dev->dev_private;

 if (pipe)
  dsi_config = dev_priv->dsi_configs[1];
 else
  dsi_config = dev_priv->dsi_configs[0];

 sender = mdfld_dsi_get_pkg_sender(dsi_config);

 if (!sender) {
  DRM_ERROR("No sender found\n");
  return;
 }

 gen_ctrl_val = (level * 0xff / MDFLD_DSI_BRIGHTNESS_MAX_LEVEL) & 0xff;

 dev_dbg(sender->dev->dev, "pipe = %d, gen_ctrl_val = %d.\n",
       pipe, gen_ctrl_val);

 if (p_type == TMD_VID) {

  mdfld_dsi_send_mcs_short(sender, tmd_write_display_brightness,
     (u8)gen_ctrl_val, 1, 1);
 } else {

  mdfld_dsi_send_mcs_short(sender, write_display_brightness,
     (u8)gen_ctrl_val, 1, 1);


  if (level == 0)
   gen_ctrl_val = 0;
  else
   gen_ctrl_val = dev_priv->mipi_ctrl_display;

  mdfld_dsi_send_mcs_short(sender, write_ctrl_display,
     (u8)gen_ctrl_val, 1, 1);
 }
}
