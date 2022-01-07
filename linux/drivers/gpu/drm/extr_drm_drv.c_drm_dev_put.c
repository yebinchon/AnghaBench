
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int ref; } ;


 int drm_dev_release ;
 int kref_put (int *,int ) ;

void drm_dev_put(struct drm_device *dev)
{
 if (dev)
  kref_put(&dev->ref, drm_dev_release);
}
