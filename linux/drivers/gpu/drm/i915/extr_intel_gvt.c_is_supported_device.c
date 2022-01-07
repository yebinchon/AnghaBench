
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 scalar_t__ IS_BROADWELL (struct drm_i915_private*) ;
 scalar_t__ IS_BROXTON (struct drm_i915_private*) ;
 scalar_t__ IS_COFFEELAKE (struct drm_i915_private*) ;
 scalar_t__ IS_KABYLAKE (struct drm_i915_private*) ;
 scalar_t__ IS_SKYLAKE (struct drm_i915_private*) ;

__attribute__((used)) static bool is_supported_device(struct drm_i915_private *dev_priv)
{
 if (IS_BROADWELL(dev_priv))
  return 1;
 if (IS_SKYLAKE(dev_priv))
  return 1;
 if (IS_KABYLAKE(dev_priv))
  return 1;
 if (IS_BROXTON(dev_priv))
  return 1;
 if (IS_COFFEELAKE(dev_priv))
  return 1;

 return 0;
}
