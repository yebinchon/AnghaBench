
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_fbc {int lock; } ;
struct drm_i915_private {struct intel_fbc fbc; } ;


 int __intel_fbc_cleanup_cfb (struct drm_i915_private*) ;
 int fbc_supported (struct drm_i915_private*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void intel_fbc_cleanup_cfb(struct drm_i915_private *dev_priv)
{
 struct intel_fbc *fbc = &dev_priv->fbc;

 if (!fbc_supported(dev_priv))
  return;

 mutex_lock(&fbc->lock);
 __intel_fbc_cleanup_cfb(dev_priv);
 mutex_unlock(&fbc->lock);
}
