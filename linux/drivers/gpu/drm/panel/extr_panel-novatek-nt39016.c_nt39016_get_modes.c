
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nt39016_panel_info {int bus_flags; int bus_format; int height_mm; int width_mm; int display_mode; } ;
struct nt39016 {struct nt39016_panel_info* panel_info; } ;
struct drm_panel {int drm; struct drm_connector* connector; } ;
struct drm_display_mode {int type; } ;
struct TYPE_2__ {int bpc; int bus_flags; int height_mm; int width_mm; } ;
struct drm_connector {TYPE_1__ display_info; } ;


 int DRM_MODE_TYPE_DRIVER ;
 int DRM_MODE_TYPE_PREFERRED ;
 int ENOMEM ;
 int drm_display_info_set_bus_formats (TYPE_1__*,int *,int) ;
 struct drm_display_mode* drm_mode_duplicate (int ,int *) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 int drm_mode_set_name (struct drm_display_mode*) ;
 struct nt39016* to_nt39016 (struct drm_panel*) ;

__attribute__((used)) static int nt39016_get_modes(struct drm_panel *drm_panel)
{
 struct nt39016 *panel = to_nt39016(drm_panel);
 const struct nt39016_panel_info *panel_info = panel->panel_info;
 struct drm_connector *connector = drm_panel->connector;
 struct drm_display_mode *mode;

 mode = drm_mode_duplicate(drm_panel->drm, &panel_info->display_mode);
 if (!mode)
  return -ENOMEM;

 drm_mode_set_name(mode);

 mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
 drm_mode_probed_add(connector, mode);

 connector->display_info.bpc = 8;
 connector->display_info.width_mm = panel_info->width_mm;
 connector->display_info.height_mm = panel_info->height_mm;

 drm_display_info_set_bus_formats(&connector->display_info,
      &panel_info->bus_format, 1);
 connector->display_info.bus_flags = panel_info->bus_flags;

 return 1;
}
