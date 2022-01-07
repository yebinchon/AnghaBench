
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int struct_mutex; int ctx_idr; } ;


 int DRIVER_KMS_LEGACY_CONTEXT ;
 int DRIVER_LEGACY ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int idr_remove (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void drm_legacy_ctxbitmap_free(struct drm_device * dev, int ctx_handle)
{
 if (!drm_core_check_feature(dev, DRIVER_KMS_LEGACY_CONTEXT) &&
     !drm_core_check_feature(dev, DRIVER_LEGACY))
  return;

 mutex_lock(&dev->struct_mutex);
 idr_remove(&dev->ctx_idr, ctx_handle);
 mutex_unlock(&dev->struct_mutex);
}
