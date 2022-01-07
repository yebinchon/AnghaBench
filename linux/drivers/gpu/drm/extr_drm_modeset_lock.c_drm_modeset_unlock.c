
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_modeset_lock {int mutex; int head; } ;


 int list_del_init (int *) ;
 int ww_mutex_unlock (int *) ;

void drm_modeset_unlock(struct drm_modeset_lock *lock)
{
 list_del_init(&lock->head);
 ww_mutex_unlock(&lock->mutex);
}
