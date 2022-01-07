
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int CLKCFG ;
 int CLKCFG_FSB_MASK ;
 int I915_READ (int ) ;

__attribute__((used)) static int g4x_hrawclk(struct drm_i915_private *dev_priv)
{
 u32 clkcfg;


 clkcfg = I915_READ(CLKCFG);
 switch (clkcfg & CLKCFG_FSB_MASK) {
 case 131:
  return 100000;
 case 130:
  return 133333;
 case 129:
  return 166667;
 case 128:
  return 200000;
 case 135:
 case 134:
  return 266667;
 case 133:
 case 132:
  return 333333;
 default:
  return 133333;
 }
}
