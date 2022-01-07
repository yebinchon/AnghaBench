
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_tvenc_mode {int dummy; } ;
struct zx_tvenc {int dev; } ;
struct drm_display_mode {int name; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int DRM_DEV_ERROR (int ,char*,int ) ;
 int MODE_NOMODE ;
 int MODE_OK ;
 struct zx_tvenc* to_zx_tvenc (struct drm_connector*) ;
 struct zx_tvenc_mode* zx_tvenc_find_zmode (struct drm_display_mode*) ;

__attribute__((used)) static enum drm_mode_status
zx_tvenc_connector_mode_valid(struct drm_connector *connector,
         struct drm_display_mode *mode)
{
 struct zx_tvenc *tvenc = to_zx_tvenc(connector);
 const struct zx_tvenc_mode *zmode;

 zmode = zx_tvenc_find_zmode(mode);
 if (!zmode) {
  DRM_DEV_ERROR(tvenc->dev, "unsupported mode: %s\n", mode->name);
  return MODE_NOMODE;
 }

 return MODE_OK;
}
