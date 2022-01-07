
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int drm_atomic_helper_shutdown (struct drm_device*) ;

void vmw_kms_lost_device(struct drm_device *dev)
{
 drm_atomic_helper_shutdown(dev);
}
