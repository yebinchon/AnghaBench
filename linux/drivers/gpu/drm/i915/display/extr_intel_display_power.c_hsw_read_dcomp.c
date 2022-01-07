
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int D_COMP_BDW ;
 int D_COMP_HSW ;
 int I915_READ (int ) ;
 scalar_t__ IS_HASWELL (struct drm_i915_private*) ;

__attribute__((used)) static u32 hsw_read_dcomp(struct drm_i915_private *dev_priv)
{
 if (IS_HASWELL(dev_priv))
  return I915_READ(D_COMP_HSW);
 else
  return I915_READ(D_COMP_BDW);
}
