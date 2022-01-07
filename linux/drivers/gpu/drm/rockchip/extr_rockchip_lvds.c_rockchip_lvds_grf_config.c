
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rockchip_lvds {scalar_t__ output; int format; int dev; TYPE_2__* soc_data; int grf; TYPE_1__* pins; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int flags; int htotal; int hsync_start; } ;
struct TYPE_4__ {int grf_soc_con7; } ;
struct TYPE_3__ {int default_state; int p; } ;


 scalar_t__ DISPLAY_OUTPUT_DUAL_LVDS ;
 scalar_t__ DISPLAY_OUTPUT_RGB ;
 int DRM_DEV_ERROR (int ,char*,int) ;
 int DRM_MODE_FLAG_PCSYNC ;
 int DRM_MODE_FLAG_PHSYNC ;
 int IS_ERR (int ) ;
 int LVDS_CH0_EN ;
 int LVDS_CH1_EN ;
 int LVDS_DUAL ;
 int LVDS_START_PHASE_RST_1 ;
 int LVDS_TTL_EN ;
 struct rockchip_lvds* encoder_to_lvds (struct drm_encoder*) ;
 int pinctrl_select_state (int ,int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void rockchip_lvds_grf_config(struct drm_encoder *encoder,
         struct drm_display_mode *mode)
{
 struct rockchip_lvds *lvds = encoder_to_lvds(encoder);
 u8 pin_hsync = (mode->flags & DRM_MODE_FLAG_PHSYNC) ? 1 : 0;
 u8 pin_dclk = (mode->flags & DRM_MODE_FLAG_PCSYNC) ? 1 : 0;
 u32 val;
 int ret;


 if (lvds->output == DISPLAY_OUTPUT_RGB)
  if (lvds->pins && !IS_ERR(lvds->pins->default_state))
   pinctrl_select_state(lvds->pins->p,
          lvds->pins->default_state);
 val = lvds->format | LVDS_CH0_EN;
 if (lvds->output == DISPLAY_OUTPUT_RGB)
  val |= LVDS_TTL_EN | LVDS_CH1_EN;
 else if (lvds->output == DISPLAY_OUTPUT_DUAL_LVDS)
  val |= LVDS_DUAL | LVDS_CH1_EN;

 if ((mode->htotal - mode->hsync_start) & 0x01)
  val |= LVDS_START_PHASE_RST_1;

 val |= (pin_dclk << 8) | (pin_hsync << 9);
 val |= (0xffff << 16);
 ret = regmap_write(lvds->grf, lvds->soc_data->grf_soc_con7, val);
 if (ret != 0) {
  DRM_DEV_ERROR(lvds->dev, "Could not write to GRF: %d\n", ret);
  return;
 }
}
