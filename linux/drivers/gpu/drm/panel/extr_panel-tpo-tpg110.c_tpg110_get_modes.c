
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tpg110 {int height; int width; TYPE_2__* panel_mode; } ;
struct drm_panel {int drm; struct drm_connector* connector; } ;
struct drm_display_mode {int type; int height_mm; int width_mm; } ;
struct TYPE_3__ {int bus_flags; int height_mm; int width_mm; } ;
struct drm_connector {TYPE_1__ display_info; } ;
struct TYPE_4__ {int mode; int bus_flags; } ;


 int DRM_MODE_TYPE_DRIVER ;
 int DRM_MODE_TYPE_PREFERRED ;
 struct drm_display_mode* drm_mode_duplicate (int ,int *) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 int drm_mode_set_name (struct drm_display_mode*) ;
 struct tpg110* to_tpg110 (struct drm_panel*) ;

__attribute__((used)) static int tpg110_get_modes(struct drm_panel *panel)
{
 struct drm_connector *connector = panel->connector;
 struct tpg110 *tpg = to_tpg110(panel);
 struct drm_display_mode *mode;

 connector->display_info.width_mm = tpg->width;
 connector->display_info.height_mm = tpg->height;
 connector->display_info.bus_flags = tpg->panel_mode->bus_flags;

 mode = drm_mode_duplicate(panel->drm, &tpg->panel_mode->mode);
 drm_mode_set_name(mode);
 mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;

 mode->width_mm = tpg->width;
 mode->height_mm = tpg->height;

 drm_mode_probed_add(connector, mode);

 return 1;
}
