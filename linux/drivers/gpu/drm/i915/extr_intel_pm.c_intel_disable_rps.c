
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int enabled; int lock; } ;
struct TYPE_4__ {TYPE_1__ rps; } ;
struct drm_i915_private {TYPE_2__ gt_pm; } ;


 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_IRONLAKE_M (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int cherryview_disable_rps (struct drm_i915_private*) ;
 int gen6_disable_rps (struct drm_i915_private*) ;
 int gen9_disable_rps (struct drm_i915_private*) ;
 int ironlake_disable_drps (struct drm_i915_private*) ;
 int lockdep_assert_held (int *) ;
 int valleyview_disable_rps (struct drm_i915_private*) ;

__attribute__((used)) static void intel_disable_rps(struct drm_i915_private *dev_priv)
{
 lockdep_assert_held(&dev_priv->gt_pm.rps.lock);

 if (!dev_priv->gt_pm.rps.enabled)
  return;

 if (INTEL_GEN(dev_priv) >= 9)
  gen9_disable_rps(dev_priv);
 else if (IS_CHERRYVIEW(dev_priv))
  cherryview_disable_rps(dev_priv);
 else if (IS_VALLEYVIEW(dev_priv))
  valleyview_disable_rps(dev_priv);
 else if (INTEL_GEN(dev_priv) >= 6)
  gen6_disable_rps(dev_priv);
 else if (IS_IRONLAKE_M(dev_priv))
  ironlake_disable_drps(dev_priv);

 dev_priv->gt_pm.rps.enabled = 0;
}
