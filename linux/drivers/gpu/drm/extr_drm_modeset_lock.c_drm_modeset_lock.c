
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_modeset_lock {int mutex; } ;
struct drm_modeset_acquire_ctx {int interruptible; } ;


 int modeset_lock (struct drm_modeset_lock*,struct drm_modeset_acquire_ctx*,int ,int) ;
 int ww_mutex_lock (int *,int *) ;

int drm_modeset_lock(struct drm_modeset_lock *lock,
  struct drm_modeset_acquire_ctx *ctx)
{
 if (ctx)
  return modeset_lock(lock, ctx, ctx->interruptible, 0);

 ww_mutex_lock(&lock->mutex, ((void*)0));
 return 0;
}
