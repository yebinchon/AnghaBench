
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int DRM_DEBUG (char*) ;
 int DRM_ERROR (char*) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_unregister (struct drm_device*) ;

void drm_put_dev(struct drm_device *dev)
{
 DRM_DEBUG("\n");

 if (!dev) {
  DRM_ERROR("cleanup called no dev\n");
  return;
 }

 drm_dev_unregister(dev);
 drm_dev_put(dev);
}
