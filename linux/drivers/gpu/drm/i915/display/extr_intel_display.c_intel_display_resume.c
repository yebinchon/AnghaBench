
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_i915_private {struct drm_atomic_state* modeset_restore_state; } ;
struct drm_device {int dummy; } ;
struct drm_atomic_state {struct drm_modeset_acquire_ctx* acquire_ctx; } ;


 int DRM_ERROR (char*,int) ;
 int EDEADLK ;
 int __intel_display_resume (struct drm_device*,struct drm_atomic_state*,struct drm_modeset_acquire_ctx*) ;
 int drm_atomic_state_put (struct drm_atomic_state*) ;
 int drm_modeset_acquire_fini (struct drm_modeset_acquire_ctx*) ;
 int drm_modeset_acquire_init (struct drm_modeset_acquire_ctx*,int ) ;
 int drm_modeset_backoff (struct drm_modeset_acquire_ctx*) ;
 int drm_modeset_drop_locks (struct drm_modeset_acquire_ctx*) ;
 int drm_modeset_lock_all_ctx (struct drm_device*,struct drm_modeset_acquire_ctx*) ;
 int intel_enable_ipc (struct drm_i915_private*) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

void intel_display_resume(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = to_i915(dev);
 struct drm_atomic_state *state = dev_priv->modeset_restore_state;
 struct drm_modeset_acquire_ctx ctx;
 int ret;

 dev_priv->modeset_restore_state = ((void*)0);
 if (state)
  state->acquire_ctx = &ctx;

 drm_modeset_acquire_init(&ctx, 0);

 while (1) {
  ret = drm_modeset_lock_all_ctx(dev, &ctx);
  if (ret != -EDEADLK)
   break;

  drm_modeset_backoff(&ctx);
 }

 if (!ret)
  ret = __intel_display_resume(dev, state, &ctx);

 intel_enable_ipc(dev_priv);
 drm_modeset_drop_locks(&ctx);
 drm_modeset_acquire_fini(&ctx);

 if (ret)
  DRM_ERROR("Restoring old state failed with %i\n", ret);
 if (state)
  drm_atomic_state_put(state);
}
