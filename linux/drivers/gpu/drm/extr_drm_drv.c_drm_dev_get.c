
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int ref; } ;


 int kref_get (int *) ;

void drm_dev_get(struct drm_device *dev)
{
 if (dev)
  kref_get(&dev->ref);
}
