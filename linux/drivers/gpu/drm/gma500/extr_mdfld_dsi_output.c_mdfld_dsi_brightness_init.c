
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mdfld_dsi_pkg_sender {struct drm_device* dev; } ;
struct mdfld_dsi_config {int dummy; } ;
struct drm_psb_private {int mipi_ctrl_display; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;


 int AMBIENT_LIGHT_SENSE_ON ;
 int BACKLIGHT_ON ;
 int BRIGHT_CNTL_BLOCK_ON ;
 int DISPLAY_BRIGHTNESS_AUTO ;
 int DISPLAY_DIMMING_ON ;
 int DRM_ERROR (char*) ;
 int GAMMA_AUTO ;
 int LABC_control ;
 int UI_IMAGE ;
 struct mdfld_dsi_pkg_sender* mdfld_dsi_get_pkg_sender (struct mdfld_dsi_config*) ;
 int mdfld_dsi_send_mcs_short (struct mdfld_dsi_pkg_sender*,int ,int,int,int) ;
 int write_cabc_min_bright ;
 int write_ctrl_cabc ;
 int write_ctrl_display ;
 int write_display_brightness ;

void mdfld_dsi_brightness_init(struct mdfld_dsi_config *dsi_config, int pipe)
{
 struct mdfld_dsi_pkg_sender *sender =
    mdfld_dsi_get_pkg_sender(dsi_config);
 struct drm_device *dev;
 struct drm_psb_private *dev_priv;
 u32 gen_ctrl_val;

 if (!sender) {
  DRM_ERROR("No sender found\n");
  return;
 }

 dev = sender->dev;
 dev_priv = dev->dev_private;


 mdfld_dsi_send_mcs_short(sender, write_display_brightness, 0xd8, 1,
    1);


 mdfld_dsi_send_mcs_short(sender, write_cabc_min_bright, 0x33, 1, 1);


 gen_ctrl_val = BRIGHT_CNTL_BLOCK_ON | DISPLAY_DIMMING_ON |
        BACKLIGHT_ON;
 if (LABC_control == 1)
  gen_ctrl_val |= DISPLAY_DIMMING_ON | DISPLAY_BRIGHTNESS_AUTO
        | GAMMA_AUTO;

 if (LABC_control == 1)
  gen_ctrl_val |= AMBIENT_LIGHT_SENSE_ON;

 dev_priv->mipi_ctrl_display = gen_ctrl_val;

 mdfld_dsi_send_mcs_short(sender, write_ctrl_display, (u8)gen_ctrl_val,
    1, 1);

 mdfld_dsi_send_mcs_short(sender, write_ctrl_cabc, UI_IMAGE, 1, 1);
}
