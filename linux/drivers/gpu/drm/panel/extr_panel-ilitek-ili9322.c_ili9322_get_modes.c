
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ili9322 {int input; TYPE_1__* conf; } ;
struct drm_panel {int drm; struct drm_connector* connector; } ;
struct drm_display_mode {int type; int height_mm; int width_mm; int flags; } ;
struct drm_display_info {int bus_flags; int height_mm; int width_mm; } ;
struct drm_connector {struct drm_display_info display_info; } ;
struct TYPE_2__ {int height_mm; int width_mm; scalar_t__ vsync_active_high; scalar_t__ hsync_active_high; scalar_t__ de_active_high; scalar_t__ dclk_active_high; } ;


 int DRM_BUS_FLAG_DE_HIGH ;
 int DRM_BUS_FLAG_DE_LOW ;
 int DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE ;
 int DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE ;
 int DRM_ERROR (char*) ;
 int DRM_MODE_FLAG_NHSYNC ;
 int DRM_MODE_FLAG_NVSYNC ;
 int DRM_MODE_FLAG_PHSYNC ;
 int DRM_MODE_FLAG_PVSYNC ;
 int DRM_MODE_TYPE_DRIVER ;
 int DRM_MODE_TYPE_PREFERRED ;
 int EINVAL ;
 struct drm_display_mode* drm_mode_duplicate (int ,int *) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 int drm_mode_set_name (struct drm_display_mode*) ;
 int itu_r_bt_656_640_mode ;
 int itu_r_bt_656_720_mode ;
 struct ili9322* panel_to_ili9322 (struct drm_panel*) ;
 int prgb_320x240_mode ;
 int srgb_320x240_mode ;
 int srgb_360x240_mode ;
 int yuv_640x320_mode ;
 int yuv_720x360_mode ;

__attribute__((used)) static int ili9322_get_modes(struct drm_panel *panel)
{
 struct drm_connector *connector = panel->connector;
 struct ili9322 *ili = panel_to_ili9322(panel);
 struct drm_display_mode *mode;
 struct drm_display_info *info;

 info = &connector->display_info;
 info->width_mm = ili->conf->width_mm;
 info->height_mm = ili->conf->height_mm;
 if (ili->conf->dclk_active_high)
  info->bus_flags |= DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE;
 else
  info->bus_flags |= DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE;

 if (ili->conf->de_active_high)
  info->bus_flags |= DRM_BUS_FLAG_DE_HIGH;
 else
  info->bus_flags |= DRM_BUS_FLAG_DE_LOW;

 switch (ili->input) {
 case 131:
  mode = drm_mode_duplicate(panel->drm, &srgb_320x240_mode);
  break;
 case 130:
  mode = drm_mode_duplicate(panel->drm, &srgb_360x240_mode);
  break;
 case 132:
 case 133:
  mode = drm_mode_duplicate(panel->drm, &prgb_320x240_mode);
  break;
 case 129:
  mode = drm_mode_duplicate(panel->drm, &yuv_640x320_mode);
  break;
 case 128:
  mode = drm_mode_duplicate(panel->drm, &yuv_720x360_mode);
  break;
 case 134:
  mode = drm_mode_duplicate(panel->drm, &itu_r_bt_656_720_mode);
  break;
 case 135:
  mode = drm_mode_duplicate(panel->drm, &itu_r_bt_656_640_mode);
  break;
 default:
  mode = ((void*)0);
  break;
 }
 if (!mode) {
  DRM_ERROR("bad mode or failed to add mode\n");
  return -EINVAL;
 }
 drm_mode_set_name(mode);




 mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;


 if (ili->conf->hsync_active_high)
  mode->flags |= DRM_MODE_FLAG_PHSYNC;
 else
  mode->flags |= DRM_MODE_FLAG_NHSYNC;
 if (ili->conf->vsync_active_high)
  mode->flags |= DRM_MODE_FLAG_PVSYNC;
 else
  mode->flags |= DRM_MODE_FLAG_NVSYNC;

 mode->width_mm = ili->conf->width_mm;
 mode->height_mm = ili->conf->height_mm;
 drm_mode_probed_add(connector, mode);

 return 1;
}
