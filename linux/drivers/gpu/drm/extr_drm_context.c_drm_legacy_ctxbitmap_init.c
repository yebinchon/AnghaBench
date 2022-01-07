
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int ctx_idr; } ;


 int DRIVER_KMS_LEGACY_CONTEXT ;
 int DRIVER_LEGACY ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int idr_init (int *) ;

void drm_legacy_ctxbitmap_init(struct drm_device * dev)
{
 if (!drm_core_check_feature(dev, DRIVER_KMS_LEGACY_CONTEXT) &&
     !drm_core_check_feature(dev, DRIVER_LEGACY))
  return;

 idr_init(&dev->ctx_idr);
}
