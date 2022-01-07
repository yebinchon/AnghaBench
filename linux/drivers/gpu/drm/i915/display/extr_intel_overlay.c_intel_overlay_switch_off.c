
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct intel_overlay {TYPE_1__* regs; int active; struct drm_i915_private* i915; } ;
struct TYPE_5__ {int connection_mutex; } ;
struct TYPE_6__ {TYPE_2__ mode_config; int struct_mutex; } ;
struct drm_i915_private {TYPE_3__ drm; } ;
struct TYPE_4__ {int OCMD; } ;


 int WARN_ON (int) ;
 int drm_modeset_is_locked (int *) ;
 int intel_overlay_off (struct intel_overlay*) ;
 int intel_overlay_recover_from_interrupt (struct intel_overlay*) ;
 int intel_overlay_release_old_vid (struct intel_overlay*) ;
 int iowrite32 (int ,int *) ;
 int lockdep_assert_held (int *) ;

int intel_overlay_switch_off(struct intel_overlay *overlay)
{
 struct drm_i915_private *dev_priv = overlay->i915;
 int ret;

 lockdep_assert_held(&dev_priv->drm.struct_mutex);
 WARN_ON(!drm_modeset_is_locked(&dev_priv->drm.mode_config.connection_mutex));

 ret = intel_overlay_recover_from_interrupt(overlay);
 if (ret != 0)
  return ret;

 if (!overlay->active)
  return 0;

 ret = intel_overlay_release_old_vid(overlay);
 if (ret != 0)
  return ret;

 iowrite32(0, &overlay->regs->OCMD);

 return intel_overlay_off(overlay);
}
