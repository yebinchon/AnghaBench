
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {scalar_t__ unplugged; } ;


 int drm_unplug_srcu ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;

bool drm_dev_enter(struct drm_device *dev, int *idx)
{
 *idx = srcu_read_lock(&drm_unplug_srcu);

 if (dev->unplugged) {
  srcu_read_unlock(&drm_unplug_srcu, *idx);
  return 0;
 }

 return 1;
}
