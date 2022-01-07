
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi_mpll_config {unsigned long mpixelclock; } ;
struct drm_display_mode {int clock; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int MODE_BAD ;
 int MODE_OK ;
 struct dw_hdmi_mpll_config* rockchip_mpll_cfg ;

__attribute__((used)) static enum drm_mode_status
dw_hdmi_rockchip_mode_valid(struct drm_connector *connector,
       const struct drm_display_mode *mode)
{
 const struct dw_hdmi_mpll_config *mpll_cfg = rockchip_mpll_cfg;
 int pclk = mode->clock * 1000;
 bool valid = 0;
 int i;

 for (i = 0; mpll_cfg[i].mpixelclock != (~0UL); i++) {
  if (pclk == mpll_cfg[i].mpixelclock) {
   valid = 1;
   break;
  }
 }

 return (valid) ? MODE_OK : MODE_BAD;
}
