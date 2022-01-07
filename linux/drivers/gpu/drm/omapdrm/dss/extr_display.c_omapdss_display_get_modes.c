
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videomode {int dummy; } ;
struct drm_display_mode {int type; } ;
struct drm_connector {int dev; } ;


 int DRM_MODE_TYPE_DRIVER ;
 int DRM_MODE_TYPE_PREFERRED ;
 int drm_display_mode_from_videomode (struct videomode const*,struct drm_display_mode*) ;
 struct drm_display_mode* drm_mode_create (int ) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 int drm_mode_set_name (struct drm_display_mode*) ;

int omapdss_display_get_modes(struct drm_connector *connector,
         const struct videomode *vm)
{
 struct drm_display_mode *mode;

 mode = drm_mode_create(connector->dev);
 if (!mode)
  return 0;

 drm_display_mode_from_videomode(vm, mode);

 mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
 drm_mode_set_name(mode);
 drm_mode_probed_add(connector, mode);

 return 1;
}
