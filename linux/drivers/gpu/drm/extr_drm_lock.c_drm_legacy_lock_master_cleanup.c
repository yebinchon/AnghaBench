
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock_queue; int * file_priv; int * hw_lock; } ;
struct drm_master {TYPE_1__ lock; } ;
struct TYPE_4__ {int * lock; } ;
struct drm_device {int struct_mutex; TYPE_2__ sigdata; } ;


 int DRIVER_LEGACY ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up_interruptible_all (int *) ;

void drm_legacy_lock_master_cleanup(struct drm_device *dev, struct drm_master *master)
{
 if (!drm_core_check_feature(dev, DRIVER_LEGACY))
  return;




     mutex_lock(&dev->struct_mutex);
 if (master->lock.hw_lock) {
  if (dev->sigdata.lock == master->lock.hw_lock)
   dev->sigdata.lock = ((void*)0);
  master->lock.hw_lock = ((void*)0);
  master->lock.file_priv = ((void*)0);
  wake_up_interruptible_all(&master->lock.lock_queue);
 }
 mutex_unlock(&dev->struct_mutex);
}
