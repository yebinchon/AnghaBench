
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int enabled; } ;
struct TYPE_4__ {int enabled; } ;
struct TYPE_6__ {TYPE_2__ rc6; TYPE_1__ rps; } ;
struct drm_i915_private {TYPE_3__ gt_pm; } ;


 int INTEL_GEN (struct drm_i915_private*) ;
 int gen11_reset_rps_interrupts (struct drm_i915_private*) ;
 int gen6_reset_rps_interrupts (struct drm_i915_private*) ;
 int intel_disable_gt_powersave (struct drm_i915_private*) ;

void intel_sanitize_gt_powersave(struct drm_i915_private *dev_priv)
{
 dev_priv->gt_pm.rps.enabled = 1;
 dev_priv->gt_pm.rc6.enabled = 1;
 intel_disable_gt_powersave(dev_priv);

 if (INTEL_GEN(dev_priv) >= 11)
  gen11_reset_rps_interrupts(dev_priv);
 else if (INTEL_GEN(dev_priv) >= 6)
  gen6_reset_rps_interrupts(dev_priv);
}
