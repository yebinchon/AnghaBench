
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef enum dpio_phy { ____Placeholder_dpio_phy } dpio_phy ;


 int BXT_PORT_REF_DW6 (int) ;
 int GRC_CODE_MASK ;
 int GRC_CODE_SHIFT ;
 int I915_READ (int ) ;

__attribute__((used)) static u32 bxt_get_grc(struct drm_i915_private *dev_priv, enum dpio_phy phy)
{
 u32 val = I915_READ(BXT_PORT_REF_DW6(phy));

 return (val & GRC_CODE_MASK) >> GRC_CODE_SHIFT;
}
