
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 int icl_get_bw_info (struct drm_i915_private*) ;

void intel_bw_init_hw(struct drm_i915_private *dev_priv)
{
 if (IS_GEN(dev_priv, 11))
  icl_get_bw_info(dev_priv);
}
