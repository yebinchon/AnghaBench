
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_modeset_lock {int dummy; } ;
struct drm_modeset_acquire_ctx {int interruptible; struct drm_modeset_lock* contended; } ;


 scalar_t__ WARN_ON (int) ;
 int drm_modeset_drop_locks (struct drm_modeset_acquire_ctx*) ;
 int modeset_lock (struct drm_modeset_lock*,struct drm_modeset_acquire_ctx*,int ,int) ;

int drm_modeset_backoff(struct drm_modeset_acquire_ctx *ctx)
{
 struct drm_modeset_lock *contended = ctx->contended;

 ctx->contended = ((void*)0);

 if (WARN_ON(!contended))
  return 0;

 drm_modeset_drop_locks(ctx);

 return modeset_lock(contended, ctx, ctx->interruptible, 1);
}
