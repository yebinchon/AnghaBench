
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repaper_epd {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int drm_dev_fini (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 struct repaper_epd* drm_to_epd (struct drm_device*) ;
 int kfree (struct repaper_epd*) ;

__attribute__((used)) static void repaper_release(struct drm_device *drm)
{
 struct repaper_epd *epd = drm_to_epd(drm);

 DRM_DEBUG_DRIVER("\n");

 drm_mode_config_cleanup(drm);
 drm_dev_fini(drm);
 kfree(epd);
}
