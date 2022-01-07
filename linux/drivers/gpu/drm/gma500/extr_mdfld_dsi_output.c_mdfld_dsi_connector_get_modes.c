
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdfld_dsi_connector {int dummy; } ;
struct mdfld_dsi_config {struct drm_display_mode* fixed_mode; } ;
struct drm_display_mode {int vdisplay; int hdisplay; } ;
struct drm_device {int dev; } ;
struct drm_connector {struct drm_device* dev; } ;


 int DRM_ERROR (char*) ;
 int dev_dbg (int ,char*,int ,int ) ;
 struct drm_display_mode* drm_mode_duplicate (struct drm_device*,struct drm_display_mode*) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 struct mdfld_dsi_connector* mdfld_dsi_connector (struct drm_connector*) ;
 struct mdfld_dsi_config* mdfld_dsi_get_config (struct mdfld_dsi_connector*) ;

__attribute__((used)) static int mdfld_dsi_connector_get_modes(struct drm_connector *connector)
{
 struct mdfld_dsi_connector *dsi_connector =
    mdfld_dsi_connector(connector);
 struct mdfld_dsi_config *dsi_config =
    mdfld_dsi_get_config(dsi_connector);
 struct drm_display_mode *fixed_mode = dsi_config->fixed_mode;
 struct drm_display_mode *dup_mode = ((void*)0);
 struct drm_device *dev = connector->dev;

 if (fixed_mode) {
  dev_dbg(dev->dev, "fixed_mode %dx%d\n",
    fixed_mode->hdisplay, fixed_mode->vdisplay);
  dup_mode = drm_mode_duplicate(dev, fixed_mode);
  drm_mode_probed_add(connector, dup_mode);
  return 1;
 }
 DRM_ERROR("Didn't get any modes!\n");
 return 0;
}
