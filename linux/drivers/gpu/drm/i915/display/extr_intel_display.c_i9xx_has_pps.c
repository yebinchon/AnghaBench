
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 scalar_t__ IS_I830 (struct drm_i915_private*) ;
 scalar_t__ IS_MOBILE (struct drm_i915_private*) ;
 scalar_t__ IS_PINEVIEW (struct drm_i915_private*) ;

__attribute__((used)) static bool i9xx_has_pps(struct drm_i915_private *dev_priv)
{
 if (IS_I830(dev_priv))
  return 0;

 return IS_PINEVIEW(dev_priv) || IS_MOBILE(dev_priv);
}
