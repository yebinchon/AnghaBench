
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_device {TYPE_1__* ops; struct omap_dss_device* next; } ;
struct drm_display_mode {int dummy; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;
struct TYPE_2__ {int (* check_timings ) (struct omap_dss_device*,struct drm_display_mode*) ;} ;


 int MODE_BAD ;
 int MODE_OK ;
 int drm_mode_copy (struct drm_display_mode*,struct drm_display_mode const*) ;
 int stub1 (struct omap_dss_device*,struct drm_display_mode*) ;

enum drm_mode_status omap_connector_mode_fixup(struct omap_dss_device *dssdev,
     const struct drm_display_mode *mode,
     struct drm_display_mode *adjusted_mode)
{
 int ret;

 drm_mode_copy(adjusted_mode, mode);

 for (; dssdev; dssdev = dssdev->next) {
  if (!dssdev->ops->check_timings)
   continue;

  ret = dssdev->ops->check_timings(dssdev, adjusted_mode);
  if (ret)
   return MODE_BAD;
 }

 return MODE_OK;
}
