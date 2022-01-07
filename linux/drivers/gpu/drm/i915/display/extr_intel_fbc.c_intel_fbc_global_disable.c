
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_fbc {int lock; TYPE_1__* crtc; scalar_t__ enabled; } ;
struct drm_i915_private {struct intel_fbc fbc; } ;
struct TYPE_2__ {int active; } ;


 int WARN_ON (int ) ;
 int __intel_fbc_disable (struct drm_i915_private*) ;
 int fbc_supported (struct drm_i915_private*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void intel_fbc_global_disable(struct drm_i915_private *dev_priv)
{
 struct intel_fbc *fbc = &dev_priv->fbc;

 if (!fbc_supported(dev_priv))
  return;

 mutex_lock(&fbc->lock);
 if (fbc->enabled) {
  WARN_ON(fbc->crtc->active);
  __intel_fbc_disable(dev_priv);
 }
 mutex_unlock(&fbc->lock);
}
