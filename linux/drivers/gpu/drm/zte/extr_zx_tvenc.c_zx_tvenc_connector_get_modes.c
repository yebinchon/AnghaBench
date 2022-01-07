
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_tvenc_mode {int mode; } ;
struct zx_tvenc {struct device* dev; } ;
struct drm_display_mode {int dummy; } ;
struct drm_connector {int dev; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (struct zx_tvenc_mode**) ;
 int DRM_DEV_ERROR (struct device*,char*) ;
 struct drm_display_mode* drm_mode_duplicate (int ,int *) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 int drm_mode_set_name (struct drm_display_mode*) ;
 struct zx_tvenc* to_zx_tvenc (struct drm_connector*) ;
 struct zx_tvenc_mode** tvenc_modes ;

__attribute__((used)) static int zx_tvenc_connector_get_modes(struct drm_connector *connector)
{
 struct zx_tvenc *tvenc = to_zx_tvenc(connector);
 struct device *dev = tvenc->dev;
 int i;

 for (i = 0; i < ARRAY_SIZE(tvenc_modes); i++) {
  const struct zx_tvenc_mode *zmode = tvenc_modes[i];
  struct drm_display_mode *mode;

  mode = drm_mode_duplicate(connector->dev, &zmode->mode);
  if (!mode) {
   DRM_DEV_ERROR(dev, "failed to duplicate drm mode\n");
   continue;
  }

  drm_mode_set_name(mode);
  drm_mode_probed_add(connector, mode);
 }

 return i;
}
