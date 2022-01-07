
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int master_mutex; scalar_t__ master; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

bool drm_master_internal_acquire(struct drm_device *dev)
{
 mutex_lock(&dev->master_mutex);
 if (dev->master) {
  mutex_unlock(&dev->master_mutex);
  return 0;
 }

 return 1;
}
