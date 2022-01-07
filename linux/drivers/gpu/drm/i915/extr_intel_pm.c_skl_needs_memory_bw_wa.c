
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 scalar_t__ IS_BROXTON (struct drm_i915_private*) ;
 scalar_t__ IS_GEN9_BC (struct drm_i915_private*) ;

__attribute__((used)) static bool skl_needs_memory_bw_wa(struct drm_i915_private *dev_priv)
{
 return IS_GEN9_BC(dev_priv) || IS_BROXTON(dev_priv);
}
