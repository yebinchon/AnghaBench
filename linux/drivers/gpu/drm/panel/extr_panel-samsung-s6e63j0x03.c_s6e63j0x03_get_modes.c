
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_panel {int drm; struct drm_connector* connector; } ;
struct drm_display_mode {int type; } ;
struct TYPE_4__ {int width_mm; int height_mm; } ;
struct drm_connector {TYPE_1__ display_info; } ;
struct TYPE_5__ {int vrefresh; int vdisplay; int hdisplay; } ;


 int DRM_ERROR (char*,int ,int ,int ) ;
 int DRM_MODE_TYPE_DRIVER ;
 int DRM_MODE_TYPE_PREFERRED ;
 int ENOMEM ;
 TYPE_2__ default_mode ;
 struct drm_display_mode* drm_mode_duplicate (int ,TYPE_2__*) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 int drm_mode_set_name (struct drm_display_mode*) ;

__attribute__((used)) static int s6e63j0x03_get_modes(struct drm_panel *panel)
{
 struct drm_connector *connector = panel->connector;
 struct drm_display_mode *mode;

 mode = drm_mode_duplicate(panel->drm, &default_mode);
 if (!mode) {
  DRM_ERROR("failed to add mode %ux%ux@%u\n",
   default_mode.hdisplay, default_mode.vdisplay,
   default_mode.vrefresh);
  return -ENOMEM;
 }

 drm_mode_set_name(mode);

 mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
 drm_mode_probed_add(connector, mode);

 connector->display_info.width_mm = 29;
 connector->display_info.height_mm = 29;

 return 1;
}
