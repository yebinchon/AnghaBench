
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 scalar_t__ IS_BROXTON (struct drm_i915_private*) ;
 scalar_t__ intel_vtd_active () ;

__attribute__((used)) static inline bool
intel_ggtt_update_needs_vtd_wa(struct drm_i915_private *dev_priv)
{
 return IS_BROXTON(dev_priv) && intel_vtd_active();
}
