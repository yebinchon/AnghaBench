
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {scalar_t__ enable_fbc; } ;


 int HAS_FBC (struct drm_i915_private*) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_BROADWELL (struct drm_i915_private*) ;
 scalar_t__ IS_GEMINILAKE (struct drm_i915_private*) ;
 TYPE_1__ i915_modparams ;

__attribute__((used)) static int intel_sanitize_fbc_option(struct drm_i915_private *dev_priv)
{
 if (i915_modparams.enable_fbc >= 0)
  return !!i915_modparams.enable_fbc;

 if (!HAS_FBC(dev_priv))
  return 0;


 if (IS_GEMINILAKE(dev_priv))
  return 0;

 if (IS_BROADWELL(dev_priv) || INTEL_GEN(dev_priv) >= 9)
  return 1;

 return 0;
}
