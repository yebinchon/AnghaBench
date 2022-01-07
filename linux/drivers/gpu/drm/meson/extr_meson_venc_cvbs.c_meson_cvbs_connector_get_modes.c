
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_cvbs_mode {int mode; } ;
struct drm_display_mode {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;


 int DRM_ERROR (char*) ;
 int MESON_CVBS_MODES_COUNT ;
 struct drm_display_mode* drm_mode_duplicate (struct drm_device*,int *) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 struct meson_cvbs_mode* meson_cvbs_modes ;

__attribute__((used)) static int meson_cvbs_connector_get_modes(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;
 struct drm_display_mode *mode;
 int i;

 for (i = 0; i < MESON_CVBS_MODES_COUNT; ++i) {
  struct meson_cvbs_mode *meson_mode = &meson_cvbs_modes[i];

  mode = drm_mode_duplicate(dev, &meson_mode->mode);
  if (!mode) {
   DRM_ERROR("Failed to create a new display mode\n");
   return 0;
  }

  drm_mode_probed_add(connector, mode);
 }

 return i;
}
