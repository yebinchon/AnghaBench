
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int * sg; } ;


 int DRIVER_LEGACY ;
 int DRIVER_SG ;
 scalar_t__ drm_core_check_feature (struct drm_device*,int ) ;
 int drm_sg_cleanup (int *) ;

void drm_legacy_sg_cleanup(struct drm_device *dev)
{
 if (drm_core_check_feature(dev, DRIVER_SG) && dev->sg &&
     drm_core_check_feature(dev, DRIVER_LEGACY)) {
  drm_sg_cleanup(dev->sg);
  dev->sg = ((void*)0);
 }
}
