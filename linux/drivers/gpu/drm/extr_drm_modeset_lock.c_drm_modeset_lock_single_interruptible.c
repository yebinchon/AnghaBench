
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_modeset_lock {int mutex; } ;


 int ww_mutex_lock_interruptible (int *,int *) ;

int drm_modeset_lock_single_interruptible(struct drm_modeset_lock *lock)
{
 return ww_mutex_lock_interruptible(&lock->mutex, ((void*)0));
}
