
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_fbc {int lock; } ;
struct TYPE_2__ {int dev; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct drm_i915_private {struct intel_fbc fbc; } ;


 int __intel_fbc_post_update (struct intel_crtc*) ;
 int fbc_supported (struct drm_i915_private*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct drm_i915_private* to_i915 (int ) ;

void intel_fbc_post_update(struct intel_crtc *crtc)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 struct intel_fbc *fbc = &dev_priv->fbc;

 if (!fbc_supported(dev_priv))
  return;

 mutex_lock(&fbc->lock);
 __intel_fbc_post_update(crtc);
 mutex_unlock(&fbc->lock);
}
