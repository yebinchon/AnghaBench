
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct drm_modeset_acquire_ctx {int dummy; } ;
struct TYPE_7__ {int flags; } ;
struct TYPE_8__ {TYPE_3__ reset; } ;
struct TYPE_5__ {int (* hpd_irq_setup ) (struct drm_i915_private*) ;} ;
struct TYPE_6__ {int mutex; } ;
struct drm_device {TYPE_2__ mode_config; } ;
struct drm_i915_private {TYPE_4__ gt; int irq_lock; TYPE_1__ display; int modeset_restore_state; struct drm_modeset_acquire_ctx reset_ctx; struct drm_device drm; } ;
struct drm_atomic_state {int dummy; } ;


 int DRM_ERROR (char*,int) ;
 int I915_RESET_MODESET ;
 int __intel_display_resume (struct drm_device*,struct drm_atomic_state*,struct drm_modeset_acquire_ctx*) ;
 int clear_bit_unlock (int ,int *) ;
 int drm_atomic_state_put (struct drm_atomic_state*) ;
 int drm_modeset_acquire_fini (struct drm_modeset_acquire_ctx*) ;
 int drm_modeset_drop_locks (struct drm_modeset_acquire_ctx*) ;
 struct drm_atomic_state* fetch_and_zero (int *) ;
 int gpu_reset_clobbers_display (struct drm_i915_private*) ;
 int intel_hpd_init (struct drm_i915_private*) ;
 int intel_init_clock_gating (struct drm_i915_private*) ;
 int intel_modeset_init_hw (struct drm_device*) ;
 int intel_pps_unlock_regs_wa (struct drm_i915_private*) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct drm_i915_private*) ;
 int test_bit (int ,int *) ;

void intel_finish_reset(struct drm_i915_private *dev_priv)
{
 struct drm_device *dev = &dev_priv->drm;
 struct drm_modeset_acquire_ctx *ctx = &dev_priv->reset_ctx;
 struct drm_atomic_state *state;
 int ret;


 if (!test_bit(I915_RESET_MODESET, &dev_priv->gt.reset.flags))
  return;

 state = fetch_and_zero(&dev_priv->modeset_restore_state);
 if (!state)
  goto unlock;


 if (!gpu_reset_clobbers_display(dev_priv)) {

  ret = __intel_display_resume(dev, state, ctx);
  if (ret)
   DRM_ERROR("Restoring old state failed with %i\n", ret);
 } else {




  intel_pps_unlock_regs_wa(dev_priv);
  intel_modeset_init_hw(dev);
  intel_init_clock_gating(dev_priv);

  spin_lock_irq(&dev_priv->irq_lock);
  if (dev_priv->display.hpd_irq_setup)
   dev_priv->display.hpd_irq_setup(dev_priv);
  spin_unlock_irq(&dev_priv->irq_lock);

  ret = __intel_display_resume(dev, state, ctx);
  if (ret)
   DRM_ERROR("Restoring old state failed with %i\n", ret);

  intel_hpd_init(dev_priv);
 }

 drm_atomic_state_put(state);
unlock:
 drm_modeset_drop_locks(ctx);
 drm_modeset_acquire_fini(ctx);
 mutex_unlock(&dev->mode_config.mutex);

 clear_bit_unlock(I915_RESET_MODESET, &dev_priv->gt.reset.flags);
}
