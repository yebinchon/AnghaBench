
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int enabled; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_6__ {TYPE_2__ rc6; TYPE_1__ rps; } ;
struct drm_i915_private {TYPE_3__ gt_pm; } ;


 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int cherryview_disable_rc6 (struct drm_i915_private*) ;
 int gen6_disable_rc6 (struct drm_i915_private*) ;
 int gen9_disable_rc6 (struct drm_i915_private*) ;
 int lockdep_assert_held (int *) ;
 int valleyview_disable_rc6 (struct drm_i915_private*) ;

__attribute__((used)) static void __intel_disable_rc6(struct drm_i915_private *dev_priv)
{
 lockdep_assert_held(&dev_priv->gt_pm.rps.lock);

 if (!dev_priv->gt_pm.rc6.enabled)
  return;

 if (INTEL_GEN(dev_priv) >= 9)
  gen9_disable_rc6(dev_priv);
 else if (IS_CHERRYVIEW(dev_priv))
  cherryview_disable_rc6(dev_priv);
 else if (IS_VALLEYVIEW(dev_priv))
  valleyview_disable_rc6(dev_priv);
 else if (INTEL_GEN(dev_priv) >= 6)
  gen6_disable_rc6(dev_priv);

 dev_priv->gt_pm.rc6.enabled = 0;
}
