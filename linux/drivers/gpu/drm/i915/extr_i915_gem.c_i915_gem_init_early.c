
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct drm_i915_private {TYPE_1__ fb_tracking; } ;


 int DRM_NOTE (char*,int) ;
 int i915_gem_init__mm (struct drm_i915_private*) ;
 int i915_gem_init__pm (struct drm_i915_private*) ;
 int i915_gemfs_init (struct drm_i915_private*) ;
 int spin_lock_init (int *) ;

int i915_gem_init_early(struct drm_i915_private *dev_priv)
{
 int err;

 i915_gem_init__mm(dev_priv);
 i915_gem_init__pm(dev_priv);

 spin_lock_init(&dev_priv->fb_tracking.lock);

 err = i915_gemfs_init(dev_priv);
 if (err)
  DRM_NOTE("Unable to create a private tmpfs mount, hugepage support will be disabled(%d).\n", err);

 return 0;
}
