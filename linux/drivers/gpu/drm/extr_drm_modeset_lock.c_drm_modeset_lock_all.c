
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_modeset_acquire_ctx {int ww_ctx; } ;
struct drm_mode_config {int acquire_ctx; int mutex; } ;
struct drm_device {struct drm_mode_config mode_config; } ;


 int EDEADLK ;
 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int __GFP_NOFAIL ;
 int drm_modeset_acquire_fini (struct drm_modeset_acquire_ctx*) ;
 int drm_modeset_acquire_init (struct drm_modeset_acquire_ctx*,int ) ;
 int drm_modeset_backoff (struct drm_modeset_acquire_ctx*) ;
 int drm_modeset_lock_all_ctx (struct drm_device*,struct drm_modeset_acquire_ctx*) ;
 int drm_warn_on_modeset_not_all_locked (struct drm_device*) ;
 int kfree (struct drm_modeset_acquire_ctx*) ;
 struct drm_modeset_acquire_ctx* kzalloc (int,int) ;
 int mutex_lock (int *) ;
 int ww_acquire_done (int *) ;

void drm_modeset_lock_all(struct drm_device *dev)
{
 struct drm_mode_config *config = &dev->mode_config;
 struct drm_modeset_acquire_ctx *ctx;
 int ret;

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL | __GFP_NOFAIL);
 if (WARN_ON(!ctx))
  return;

 mutex_lock(&config->mutex);

 drm_modeset_acquire_init(ctx, 0);

retry:
 ret = drm_modeset_lock_all_ctx(dev, ctx);
 if (ret < 0) {
  if (ret == -EDEADLK) {
   drm_modeset_backoff(ctx);
   goto retry;
  }

  drm_modeset_acquire_fini(ctx);
  kfree(ctx);
  return;
 }
 ww_acquire_done(&ctx->ww_ctx);

 WARN_ON(config->acquire_ctx);





 config->acquire_ctx = ctx;

 drm_warn_on_modeset_not_all_locked(dev);
}
