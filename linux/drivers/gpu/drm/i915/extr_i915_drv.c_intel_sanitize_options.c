
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int intel_gvt_sanitize_options (struct drm_i915_private*) ;

__attribute__((used)) static void intel_sanitize_options(struct drm_i915_private *dev_priv)
{
 intel_gvt_sanitize_options(dev_priv);
}
