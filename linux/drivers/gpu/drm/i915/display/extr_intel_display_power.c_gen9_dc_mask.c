
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int DC_STATE_EN_DC9 ;
 int DC_STATE_EN_UPTO_DC5 ;
 int DC_STATE_EN_UPTO_DC6 ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_GEN9_LP (struct drm_i915_private*) ;

__attribute__((used)) static u32 gen9_dc_mask(struct drm_i915_private *dev_priv)
{
 u32 mask;

 mask = DC_STATE_EN_UPTO_DC5;
 if (INTEL_GEN(dev_priv) >= 11)
  mask |= DC_STATE_EN_UPTO_DC6 | DC_STATE_EN_DC9;
 else if (IS_GEN9_LP(dev_priv))
  mask |= DC_STATE_EN_DC9;
 else
  mask |= DC_STATE_EN_UPTO_DC6;

 return mask;
}
