
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct feiyang {TYPE_1__* dsi; } ;
struct drm_panel {int drm; struct drm_connector* connector; } ;
struct drm_display_mode {int dummy; } ;
struct drm_connector {int dummy; } ;
struct TYPE_5__ {int vrefresh; int vdisplay; int hdisplay; } ;
struct TYPE_4__ {int dev; } ;


 int DRM_DEV_ERROR (int *,char*,int ,int ,int ) ;
 int ENOMEM ;
 struct drm_display_mode* drm_mode_duplicate (int ,TYPE_2__*) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 int drm_mode_set_name (struct drm_display_mode*) ;
 TYPE_2__ feiyang_default_mode ;
 struct feiyang* panel_to_feiyang (struct drm_panel*) ;

__attribute__((used)) static int feiyang_get_modes(struct drm_panel *panel)
{
 struct drm_connector *connector = panel->connector;
 struct feiyang *ctx = panel_to_feiyang(panel);
 struct drm_display_mode *mode;

 mode = drm_mode_duplicate(panel->drm, &feiyang_default_mode);
 if (!mode) {
  DRM_DEV_ERROR(&ctx->dsi->dev, "failed to add mode %ux%ux@%u\n",
         feiyang_default_mode.hdisplay,
         feiyang_default_mode.vdisplay,
         feiyang_default_mode.vrefresh);
  return -ENOMEM;
 }

 drm_mode_set_name(mode);

 drm_mode_probed_add(connector, mode);

 return 1;
}
