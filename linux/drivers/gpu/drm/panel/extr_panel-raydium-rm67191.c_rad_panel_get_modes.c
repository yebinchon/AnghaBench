
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_panel {struct drm_connector* connector; int dev; int drm; } ;
struct drm_display_mode {int type; int height_mm; int width_mm; } ;
struct TYPE_5__ {int bus_flags; int height_mm; int width_mm; } ;
struct drm_connector {TYPE_2__ display_info; } ;
struct TYPE_4__ {int vrefresh; int vdisplay; int hdisplay; } ;


 int ARRAY_SIZE (int ) ;
 int DRM_DEV_ERROR (int ,char*,int ,int ,int ) ;
 int DRM_MODE_TYPE_DRIVER ;
 int DRM_MODE_TYPE_PREFERRED ;
 int ENOMEM ;
 TYPE_1__ default_mode ;
 int drm_display_info_set_bus_formats (TYPE_2__*,int ,int ) ;
 struct drm_display_mode* drm_mode_duplicate (int ,TYPE_1__*) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 int drm_mode_set_name (struct drm_display_mode*) ;
 int rad_bus_flags ;
 int rad_bus_formats ;

__attribute__((used)) static int rad_panel_get_modes(struct drm_panel *panel)
{
 struct drm_connector *connector = panel->connector;
 struct drm_display_mode *mode;

 mode = drm_mode_duplicate(panel->drm, &default_mode);
 if (!mode) {
  DRM_DEV_ERROR(panel->dev, "failed to add mode %ux%ux@%u\n",
         default_mode.hdisplay, default_mode.vdisplay,
         default_mode.vrefresh);
  return -ENOMEM;
 }

 drm_mode_set_name(mode);
 mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
 drm_mode_probed_add(panel->connector, mode);

 connector->display_info.width_mm = mode->width_mm;
 connector->display_info.height_mm = mode->height_mm;
 connector->display_info.bus_flags = rad_bus_flags;

 drm_display_info_set_bus_formats(&connector->display_info,
      rad_bus_formats,
      ARRAY_SIZE(rad_bus_formats));
 return 1;
}
