
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_mode_config {int mutex; struct drm_modeset_acquire_ctx* acquire_ctx; } ;
struct drm_device {struct drm_mode_config mode_config; } ;


 scalar_t__ WARN_ON (int) ;
 int drm_modeset_acquire_fini (struct drm_modeset_acquire_ctx*) ;
 int drm_modeset_drop_locks (struct drm_modeset_acquire_ctx*) ;
 int kfree (struct drm_modeset_acquire_ctx*) ;
 int mutex_unlock (int *) ;

void drm_modeset_unlock_all(struct drm_device *dev)
{
 struct drm_mode_config *config = &dev->mode_config;
 struct drm_modeset_acquire_ctx *ctx = config->acquire_ctx;

 if (WARN_ON(!ctx))
  return;

 config->acquire_ctx = ((void*)0);
 drm_modeset_drop_locks(ctx);
 drm_modeset_acquire_fini(ctx);

 kfree(ctx);

 mutex_unlock(&dev->mode_config.mutex);
}
