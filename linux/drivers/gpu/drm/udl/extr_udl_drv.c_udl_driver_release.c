
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int drm_dev_fini (struct drm_device*) ;
 int kfree (struct drm_device*) ;
 int udl_fini (struct drm_device*) ;
 int udl_modeset_cleanup (struct drm_device*) ;

__attribute__((used)) static void udl_driver_release(struct drm_device *dev)
{
 udl_fini(dev);
 udl_modeset_cleanup(dev);
 drm_dev_fini(dev);
 kfree(dev);
}
