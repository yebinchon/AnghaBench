
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_MOBILE (struct drm_i915_private*) ;
 scalar_t__ intel_vtd_active () ;

__attribute__((used)) static bool needs_idle_maps(struct drm_i915_private *dev_priv)
{



 return IS_GEN(dev_priv, 5) && IS_MOBILE(dev_priv) && intel_vtd_active();
}
