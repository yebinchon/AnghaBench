
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int CONFIG_INTEL_MEI_HDCP ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int IS_ENABLED (int ) ;
 scalar_t__ IS_GEMINILAKE (struct drm_i915_private*) ;
 scalar_t__ IS_KABYLAKE (struct drm_i915_private*) ;

__attribute__((used)) static bool is_hdcp2_supported(struct drm_i915_private *dev_priv)
{
 if (!IS_ENABLED(CONFIG_INTEL_MEI_HDCP))
  return 0;

 return (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv) ||
  IS_KABYLAKE(dev_priv));
}
