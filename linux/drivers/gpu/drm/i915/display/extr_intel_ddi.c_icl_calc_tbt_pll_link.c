
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;


 int DDI_CLK_SEL (int) ;
 int DDI_CLK_SEL_MASK ;





 int I915_READ (int ) ;
 int MISSING_CASE (int) ;

__attribute__((used)) static int icl_calc_tbt_pll_link(struct drm_i915_private *dev_priv,
     enum port port)
{
 u32 val = I915_READ(DDI_CLK_SEL(port)) & DDI_CLK_SEL_MASK;

 switch (val) {
 case 132:
  return 0;
 case 131:
  return 162000;
 case 130:
  return 270000;
 case 129:
  return 540000;
 case 128:
  return 810000;
 default:
  MISSING_CASE(val);
  return 0;
 }
}
