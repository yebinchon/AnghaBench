
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;





 unsigned int I915_TILING_NONE ;
 unsigned int I915_TILING_X ;
 unsigned int I915_TILING_Y ;

__attribute__((used)) static unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier)
{
 switch (fb_modifier) {
 case 130:
  return I915_TILING_X;
 case 129:
 case 128:
  return I915_TILING_Y;
 default:
  return I915_TILING_NONE;
 }
}
