
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int WARN_ON (int ) ;
 int __drm_helper_disable_unused_functions (struct drm_device*) ;
 int drm_drv_uses_atomic_modeset (struct drm_device*) ;
 int drm_modeset_lock_all (struct drm_device*) ;
 int drm_modeset_unlock_all (struct drm_device*) ;

void drm_helper_disable_unused_functions(struct drm_device *dev)
{
 WARN_ON(drm_drv_uses_atomic_modeset(dev));

 drm_modeset_lock_all(dev);
 __drm_helper_disable_unused_functions(dev);
 drm_modeset_unlock_all(dev);
}
