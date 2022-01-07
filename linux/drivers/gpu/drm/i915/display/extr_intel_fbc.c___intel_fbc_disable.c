
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_fbc {int enabled; int active; struct intel_crtc* crtc; int lock; } ;
struct intel_crtc {int pipe; } ;
struct drm_i915_private {struct intel_fbc fbc; } ;


 int DRM_DEBUG_KMS (char*,int ) ;
 int WARN_ON (int) ;
 int __intel_fbc_cleanup_cfb (struct drm_i915_private*) ;
 int mutex_is_locked (int *) ;
 int pipe_name (int ) ;

__attribute__((used)) static void __intel_fbc_disable(struct drm_i915_private *dev_priv)
{
 struct intel_fbc *fbc = &dev_priv->fbc;
 struct intel_crtc *crtc = fbc->crtc;

 WARN_ON(!mutex_is_locked(&fbc->lock));
 WARN_ON(!fbc->enabled);
 WARN_ON(fbc->active);

 DRM_DEBUG_KMS("Disabling FBC on pipe %c\n", pipe_name(crtc->pipe));

 __intel_fbc_cleanup_cfb(dev_priv);

 fbc->enabled = 0;
 fbc->crtc = ((void*)0);
}
