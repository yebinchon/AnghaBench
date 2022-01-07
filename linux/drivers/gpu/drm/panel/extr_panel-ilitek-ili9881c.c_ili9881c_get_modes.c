
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ili9881c {TYPE_1__* dsi; } ;
struct drm_panel {struct drm_connector* connector; int drm; } ;
struct drm_display_mode {int type; } ;
struct TYPE_6__ {int width_mm; int height_mm; } ;
struct drm_connector {TYPE_2__ display_info; } ;
struct TYPE_7__ {int vrefresh; int vdisplay; int hdisplay; } ;
struct TYPE_5__ {int dev; } ;


 int DRM_MODE_TYPE_DRIVER ;
 int DRM_MODE_TYPE_PREFERRED ;
 int ENOMEM ;
 TYPE_3__ bananapi_default_mode ;
 int dev_err (int *,char*,int ,int ,int ) ;
 struct drm_display_mode* drm_mode_duplicate (int ,TYPE_3__*) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 int drm_mode_set_name (struct drm_display_mode*) ;
 struct ili9881c* panel_to_ili9881c (struct drm_panel*) ;

__attribute__((used)) static int ili9881c_get_modes(struct drm_panel *panel)
{
 struct drm_connector *connector = panel->connector;
 struct ili9881c *ctx = panel_to_ili9881c(panel);
 struct drm_display_mode *mode;

 mode = drm_mode_duplicate(panel->drm, &bananapi_default_mode);
 if (!mode) {
  dev_err(&ctx->dsi->dev, "failed to add mode %ux%ux@%u\n",
   bananapi_default_mode.hdisplay,
   bananapi_default_mode.vdisplay,
   bananapi_default_mode.vrefresh);
  return -ENOMEM;
 }

 drm_mode_set_name(mode);

 mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
 drm_mode_probed_add(connector, mode);

 panel->connector->display_info.width_mm = 62;
 panel->connector->display_info.height_mm = 110;

 return 1;
}
