
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_local_map {int dummy; } ;
struct drm_device {int struct_mutex; } ;


 int DRIVER_KMS_LEGACY_CONTEXT ;
 int DRIVER_LEGACY ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int drm_legacy_rmmap_locked (struct drm_device*,struct drm_local_map*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void drm_legacy_rmmap(struct drm_device *dev, struct drm_local_map *map)
{
 if (!drm_core_check_feature(dev, DRIVER_KMS_LEGACY_CONTEXT) &&
     !drm_core_check_feature(dev, DRIVER_LEGACY))
  return;

 mutex_lock(&dev->struct_mutex);
 drm_legacy_rmmap_locked(dev, map);
 mutex_unlock(&dev->struct_mutex);
}
