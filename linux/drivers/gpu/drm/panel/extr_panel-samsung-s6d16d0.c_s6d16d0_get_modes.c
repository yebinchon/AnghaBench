
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_panel {int drm; struct drm_connector* connector; } ;
struct drm_display_mode {int type; int height_mm; int width_mm; } ;
struct TYPE_2__ {int height_mm; int width_mm; } ;
struct drm_connector {TYPE_1__ display_info; } ;


 int DRM_ERROR (char*) ;
 int DRM_MODE_TYPE_DRIVER ;
 int DRM_MODE_TYPE_PREFERRED ;
 int EINVAL ;
 struct drm_display_mode* drm_mode_duplicate (int ,int *) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 int drm_mode_set_name (struct drm_display_mode*) ;
 int samsung_s6d16d0_mode ;

__attribute__((used)) static int s6d16d0_get_modes(struct drm_panel *panel)
{
 struct drm_connector *connector = panel->connector;
 struct drm_display_mode *mode;

 mode = drm_mode_duplicate(panel->drm, &samsung_s6d16d0_mode);
 if (!mode) {
  DRM_ERROR("bad mode or failed to add mode\n");
  return -EINVAL;
 }
 drm_mode_set_name(mode);
 mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;

 connector->display_info.width_mm = mode->width_mm;
 connector->display_info.height_mm = mode->height_mm;

 drm_mode_probed_add(connector, mode);

 return 1;
}
