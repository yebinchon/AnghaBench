
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int INTEL_GEN (struct drm_i915_private const*) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private const*) ;
 scalar_t__ IS_I965G (struct drm_i915_private const*) ;
 scalar_t__ IS_I965GM (struct drm_i915_private const*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private const*) ;

__attribute__((used)) static unsigned int intel_linear_alignment(const struct drm_i915_private *dev_priv)
{
 if (INTEL_GEN(dev_priv) >= 9)
  return 256 * 1024;
 else if (IS_I965G(dev_priv) || IS_I965GM(dev_priv) ||
   IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
  return 128 * 1024;
 else if (INTEL_GEN(dev_priv) >= 4)
  return 4 * 1024;
 else
  return 0;
}
