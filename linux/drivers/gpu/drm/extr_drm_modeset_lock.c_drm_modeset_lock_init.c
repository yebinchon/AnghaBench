
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_modeset_lock {int head; int mutex; } ;


 int INIT_LIST_HEAD (int *) ;
 int crtc_ww_class ;
 int ww_mutex_init (int *,int *) ;

void drm_modeset_lock_init(struct drm_modeset_lock *lock)
{
 ww_mutex_init(&lock->mutex, &crtc_ww_class);
 INIT_LIST_HEAD(&lock->head);
}
