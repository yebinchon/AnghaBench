
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct drm_modeset_acquire_ctx {int dummy; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_9__ {TYPE_1__ reset; } ;
struct TYPE_7__ {int pending_fb_pin; } ;
struct TYPE_8__ {int mutex; } ;
struct drm_device {TYPE_3__ mode_config; } ;
struct drm_i915_private {struct drm_atomic_state* modeset_restore_state; TYPE_4__ gt; TYPE_2__ gpu_error; struct drm_modeset_acquire_ctx reset_ctx; struct drm_device drm; } ;
struct drm_atomic_state {struct drm_modeset_acquire_ctx* acquire_ctx; } ;
struct TYPE_10__ {int force_reset_modeset_test; } ;


 int DRM_DEBUG_KMS (char*) ;
 int DRM_ERROR (char*,int) ;
 int EDEADLK ;
 int I915_RESET_MODESET ;
 scalar_t__ IS_ERR (struct drm_atomic_state*) ;
 int PTR_ERR (struct drm_atomic_state*) ;
 scalar_t__ atomic_read (int *) ;
 int drm_atomic_helper_disable_all (struct drm_device*,struct drm_modeset_acquire_ctx*) ;
 struct drm_atomic_state* drm_atomic_helper_duplicate_state (struct drm_device*,struct drm_modeset_acquire_ctx*) ;
 int drm_atomic_state_put (struct drm_atomic_state*) ;
 int drm_modeset_acquire_init (struct drm_modeset_acquire_ctx*,int ) ;
 int drm_modeset_backoff (struct drm_modeset_acquire_ctx*) ;
 int drm_modeset_lock_all_ctx (struct drm_device*,struct drm_modeset_acquire_ctx*) ;
 int gpu_reset_clobbers_display (struct drm_i915_private*) ;
 TYPE_5__ i915_modparams ;
 int intel_gt_set_wedged (TYPE_4__*) ;
 int mutex_lock (int *) ;
 int set_bit (int ,int *) ;
 int smp_mb__after_atomic () ;
 int wake_up_bit (int *,int ) ;

void intel_prepare_reset(struct drm_i915_private *dev_priv)
{
 struct drm_device *dev = &dev_priv->drm;
 struct drm_modeset_acquire_ctx *ctx = &dev_priv->reset_ctx;
 struct drm_atomic_state *state;
 int ret;


 if (!i915_modparams.force_reset_modeset_test &&
     !gpu_reset_clobbers_display(dev_priv))
  return;


 set_bit(I915_RESET_MODESET, &dev_priv->gt.reset.flags);
 smp_mb__after_atomic();
 wake_up_bit(&dev_priv->gt.reset.flags, I915_RESET_MODESET);

 if (atomic_read(&dev_priv->gpu_error.pending_fb_pin)) {
  DRM_DEBUG_KMS("Modeset potentially stuck, unbreaking through wedging\n");
  intel_gt_set_wedged(&dev_priv->gt);
 }





 mutex_lock(&dev->mode_config.mutex);
 drm_modeset_acquire_init(ctx, 0);
 while (1) {
  ret = drm_modeset_lock_all_ctx(dev, ctx);
  if (ret != -EDEADLK)
   break;

  drm_modeset_backoff(ctx);
 }




 state = drm_atomic_helper_duplicate_state(dev, ctx);
 if (IS_ERR(state)) {
  ret = PTR_ERR(state);
  DRM_ERROR("Duplicating state failed with %i\n", ret);
  return;
 }

 ret = drm_atomic_helper_disable_all(dev, ctx);
 if (ret) {
  DRM_ERROR("Suspending crtc's failed with %i\n", ret);
  drm_atomic_state_put(state);
  return;
 }

 dev_priv->modeset_restore_state = state;
 state->acquire_ctx = ctx;
}
