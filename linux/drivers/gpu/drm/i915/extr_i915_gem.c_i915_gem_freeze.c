
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int i915_gem_shrink_all (struct drm_i915_private*) ;

int i915_gem_freeze(struct drm_i915_private *dev_priv)
{



 i915_gem_shrink_all(dev_priv);

 return 0;
}
