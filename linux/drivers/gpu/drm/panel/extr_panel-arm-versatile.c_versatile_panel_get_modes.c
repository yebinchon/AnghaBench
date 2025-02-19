
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct versatile_panel {TYPE_2__* panel_type; } ;
struct drm_panel {int drm; struct drm_connector* connector; } ;
struct drm_display_mode {int type; int height_mm; int width_mm; } ;
struct TYPE_3__ {int bus_flags; int height_mm; int width_mm; } ;
struct drm_connector {TYPE_1__ display_info; } ;
struct TYPE_4__ {int height_mm; int width_mm; int mode; int bus_flags; } ;


 int DRM_MODE_TYPE_DRIVER ;
 int DRM_MODE_TYPE_PREFERRED ;
 struct drm_display_mode* drm_mode_duplicate (int ,int *) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 int drm_mode_set_name (struct drm_display_mode*) ;
 struct versatile_panel* to_versatile_panel (struct drm_panel*) ;

__attribute__((used)) static int versatile_panel_get_modes(struct drm_panel *panel)
{
 struct drm_connector *connector = panel->connector;
 struct versatile_panel *vpanel = to_versatile_panel(panel);
 struct drm_display_mode *mode;

 connector->display_info.width_mm = vpanel->panel_type->width_mm;
 connector->display_info.height_mm = vpanel->panel_type->height_mm;
 connector->display_info.bus_flags = vpanel->panel_type->bus_flags;

 mode = drm_mode_duplicate(panel->drm, &vpanel->panel_type->mode);
 drm_mode_set_name(mode);
 mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;

 mode->width_mm = vpanel->panel_type->width_mm;
 mode->height_mm = vpanel->panel_type->height_mm;
 drm_mode_probed_add(connector, mode);

 return 1;
}
