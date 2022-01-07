
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_hdmi {int clk_phy; int clk_pix; int mode; } ;
struct drm_display_mode {int clock; } ;
struct drm_bridge {struct sti_hdmi* driver_private; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int DRM_ERROR (char*,int) ;
 int clk_set_rate (int ,int) ;
 int memcpy (int *,struct drm_display_mode const*,int) ;

__attribute__((used)) static void sti_hdmi_set_mode(struct drm_bridge *bridge,
         const struct drm_display_mode *mode,
         const struct drm_display_mode *adjusted_mode)
{
 struct sti_hdmi *hdmi = bridge->driver_private;
 int ret;

 DRM_DEBUG_DRIVER("\n");


 memcpy(&hdmi->mode, mode, sizeof(struct drm_display_mode));


 ret = clk_set_rate(hdmi->clk_pix, mode->clock * 1000);
 if (ret < 0) {
  DRM_ERROR("Cannot set rate (%dHz) for hdmi_pix clk\n",
     mode->clock * 1000);
  return;
 }
 ret = clk_set_rate(hdmi->clk_phy, mode->clock * 1000);
 if (ret < 0) {
  DRM_ERROR("Cannot set rate (%dHz) for hdmi_rejection_pll clk\n",
     mode->clock * 1000);
  return;
 }
}
