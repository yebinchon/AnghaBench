
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ panel; } ;
struct exynos_dp_device {int vm; int dev; TYPE_2__ plat_data; } ;
struct drm_display_mode {int type; int height_mm; int width_mm; } ;
struct TYPE_3__ {int height_mm; int width_mm; } ;
struct drm_connector {TYPE_1__ display_info; int dev; } ;
struct analogix_dp_plat_data {int dummy; } ;


 int DRM_DEV_ERROR (int ,char*) ;
 int DRM_MODE_TYPE_DRIVER ;
 int DRM_MODE_TYPE_PREFERRED ;
 int drm_display_mode_from_videomode (int *,struct drm_display_mode*) ;
 struct drm_display_mode* drm_mode_create (int ) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 int drm_mode_set_name (struct drm_display_mode*) ;
 struct exynos_dp_device* to_dp (struct analogix_dp_plat_data*) ;

__attribute__((used)) static int exynos_dp_get_modes(struct analogix_dp_plat_data *plat_data,
          struct drm_connector *connector)
{
 struct exynos_dp_device *dp = to_dp(plat_data);
 struct drm_display_mode *mode;
 int num_modes = 0;

 if (dp->plat_data.panel)
  return num_modes;

 mode = drm_mode_create(connector->dev);
 if (!mode) {
  DRM_DEV_ERROR(dp->dev,
         "failed to create a new display mode.\n");
  return num_modes;
 }

 drm_display_mode_from_videomode(&dp->vm, mode);
 connector->display_info.width_mm = mode->width_mm;
 connector->display_info.height_mm = mode->height_mm;

 mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
 drm_mode_set_name(mode);
 drm_mode_probed_add(connector, mode);

 return num_modes + 1;
}
