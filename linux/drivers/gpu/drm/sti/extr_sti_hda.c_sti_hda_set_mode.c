
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct sti_hda {int clk_pix; int clk_hddac; int mode; } ;
struct drm_display_mode {int clock; } ;
struct drm_bridge {struct sti_hda* driver_private; } ;
struct TYPE_2__ {int vid_cat; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int DRM_ERROR (char*,...) ;


 int clk_set_rate (int ,int) ;
 int hda_get_mode_idx (int ,size_t*) ;
 TYPE_1__* hda_supported_modes ;
 int memcpy (int *,struct drm_display_mode const*,int) ;

__attribute__((used)) static void sti_hda_set_mode(struct drm_bridge *bridge,
        const struct drm_display_mode *mode,
        const struct drm_display_mode *adjusted_mode)
{
 struct sti_hda *hda = bridge->driver_private;
 u32 mode_idx;
 int hddac_rate;
 int ret;

 DRM_DEBUG_DRIVER("\n");

 memcpy(&hda->mode, mode, sizeof(struct drm_display_mode));

 if (!hda_get_mode_idx(hda->mode, &mode_idx)) {
  DRM_ERROR("Undefined mode\n");
  return;
 }

 switch (hda_supported_modes[mode_idx].vid_cat) {
 case 128:

  hddac_rate = mode->clock * 1000 * 2;
  break;
 case 129:

  hddac_rate = mode->clock * 1000 * 4;
  break;
 default:
  DRM_ERROR("Undefined mode\n");
  return;
 }


 ret = clk_set_rate(hda->clk_hddac, hddac_rate);
 if (ret < 0)
  DRM_ERROR("Cannot set rate (%dHz) for hda_hddac clk\n",
     hddac_rate);


 ret = clk_set_rate(hda->clk_pix, mode->clock * 1000);
 if (ret < 0)
  DRM_ERROR("Cannot set rate (%dHz) for hda_pix clk\n",
     mode->clock * 1000);
}
