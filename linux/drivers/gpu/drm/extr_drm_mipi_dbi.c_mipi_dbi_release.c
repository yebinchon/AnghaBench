
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dbi_dev {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int drm_dev_fini (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 struct mipi_dbi_dev* drm_to_mipi_dbi_dev (struct drm_device*) ;
 int kfree (struct mipi_dbi_dev*) ;

void mipi_dbi_release(struct drm_device *drm)
{
 struct mipi_dbi_dev *dbidev = drm_to_mipi_dbi_dev(drm);

 DRM_DEBUG_DRIVER("\n");

 drm_mode_config_cleanup(drm);
 drm_dev_fini(drm);
 kfree(dbidev);
}
