
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_hda_connector {struct sti_hda* hda; } ;
struct sti_hda {int clk_pix; } ;
struct drm_display_mode {int clock; } ;
struct drm_connector {int dummy; } ;


 int CLK_TOLERANCE_HZ ;
 int DRM_DEBUG_DRIVER (char*,int,...) ;
 int MODE_BAD ;
 int MODE_OK ;
 int clk_round_rate (int ,int) ;
 int hda_get_mode_idx (struct drm_display_mode,int*) ;
 struct sti_hda_connector* to_sti_hda_connector (struct drm_connector*) ;

__attribute__((used)) static int sti_hda_connector_mode_valid(struct drm_connector *connector,
     struct drm_display_mode *mode)
{
 int target = mode->clock * 1000;
 int target_min = target - CLK_TOLERANCE_HZ;
 int target_max = target + CLK_TOLERANCE_HZ;
 int result;
 int idx;
 struct sti_hda_connector *hda_connector
  = to_sti_hda_connector(connector);
 struct sti_hda *hda = hda_connector->hda;

 if (!hda_get_mode_idx(*mode, &idx)) {
  return MODE_BAD;
 } else {
  result = clk_round_rate(hda->clk_pix, target);

  DRM_DEBUG_DRIVER("target rate = %d => available rate = %d\n",
     target, result);

  if ((result < target_min) || (result > target_max)) {
   DRM_DEBUG_DRIVER("hda pixclk=%d not supported\n",
      target);
   return MODE_BAD;
  }
 }

 return MODE_OK;
}
