
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_hdmi_connector {struct sti_hdmi* hdmi; } ;
struct sti_hdmi {int clk_pix; } ;
struct drm_display_mode {int clock; } ;
struct drm_connector {int dummy; } ;


 int CLK_TOLERANCE_HZ ;
 int DRM_DEBUG_DRIVER (char*,int,...) ;
 int MODE_BAD ;
 int MODE_OK ;
 int clk_round_rate (int ,int) ;
 struct sti_hdmi_connector* to_sti_hdmi_connector (struct drm_connector*) ;

__attribute__((used)) static int sti_hdmi_connector_mode_valid(struct drm_connector *connector,
     struct drm_display_mode *mode)
{
 int target = mode->clock * 1000;
 int target_min = target - CLK_TOLERANCE_HZ;
 int target_max = target + CLK_TOLERANCE_HZ;
 int result;
 struct sti_hdmi_connector *hdmi_connector
  = to_sti_hdmi_connector(connector);
 struct sti_hdmi *hdmi = hdmi_connector->hdmi;


 result = clk_round_rate(hdmi->clk_pix, target);

 DRM_DEBUG_DRIVER("target rate = %d => available rate = %d\n",
    target, result);

 if ((result < target_min) || (result > target_max)) {
  DRM_DEBUG_DRIVER("hdmi pixclk=%d not supported\n", target);
  return MODE_BAD;
 }

 return MODE_OK;
}
