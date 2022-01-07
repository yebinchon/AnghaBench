
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ld9040 {int height_mm; int width_mm; int vm; } ;
struct drm_panel {struct drm_connector* connector; } ;
struct drm_display_mode {int type; int height_mm; int width_mm; } ;
struct TYPE_2__ {int height_mm; int width_mm; } ;
struct drm_connector {TYPE_1__ display_info; int dev; } ;


 int DRM_ERROR (char*) ;
 int DRM_MODE_TYPE_DRIVER ;
 int DRM_MODE_TYPE_PREFERRED ;
 int drm_display_mode_from_videomode (int *,struct drm_display_mode*) ;
 struct drm_display_mode* drm_mode_create (int ) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 struct ld9040* panel_to_ld9040 (struct drm_panel*) ;

__attribute__((used)) static int ld9040_get_modes(struct drm_panel *panel)
{
 struct drm_connector *connector = panel->connector;
 struct ld9040 *ctx = panel_to_ld9040(panel);
 struct drm_display_mode *mode;

 mode = drm_mode_create(connector->dev);
 if (!mode) {
  DRM_ERROR("failed to create a new display mode\n");
  return 0;
 }

 drm_display_mode_from_videomode(&ctx->vm, mode);
 mode->width_mm = ctx->width_mm;
 mode->height_mm = ctx->height_mm;
 connector->display_info.width_mm = mode->width_mm;
 connector->display_info.height_mm = mode->height_mm;

 mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
 drm_mode_probed_add(connector, mode);

 return 1;
}
