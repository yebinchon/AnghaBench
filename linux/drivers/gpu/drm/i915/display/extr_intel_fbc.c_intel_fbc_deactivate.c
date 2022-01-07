
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_fbc {char const* no_fbc_reason; scalar_t__ active; int lock; } ;
struct drm_i915_private {struct intel_fbc fbc; } ;


 int WARN_ON (int) ;
 int intel_fbc_hw_deactivate (struct drm_i915_private*) ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static void intel_fbc_deactivate(struct drm_i915_private *dev_priv,
     const char *reason)
{
 struct intel_fbc *fbc = &dev_priv->fbc;

 WARN_ON(!mutex_is_locked(&fbc->lock));

 if (fbc->active)
  intel_fbc_hw_deactivate(dev_priv);

 fbc->no_fbc_reason = reason;
}
