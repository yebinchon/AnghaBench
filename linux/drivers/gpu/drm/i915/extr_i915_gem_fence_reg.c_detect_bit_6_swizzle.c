
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_uncore {int dummy; } ;
struct TYPE_2__ {int bit_6_swizzle_x; int bit_6_swizzle_y; } ;
struct drm_i915_private {TYPE_1__ mm; int quirks; scalar_t__ preserve_bios_swizzle; struct intel_uncore uncore; } ;


 int C0DRB3 ;
 int C1DRB3 ;
 int DCC ;
 int DCC2 ;
 int DCC2_MODIFIED_ENHANCED_DISABLE ;


 int DCC_ADDRESSING_MODE_MASK ;

 int DCC_CHANNEL_XOR_BIT_17 ;
 int DCC_CHANNEL_XOR_DISABLE ;
 int DISP_ARB_CTL ;
 int DISP_TILE_SURFACE_SWIZZLING ;
 int DRM_ERROR (char*) ;
 int I915_BIT_6_SWIZZLE_9 ;
 int I915_BIT_6_SWIZZLE_9_10 ;
 int I915_BIT_6_SWIZZLE_9_10_11 ;
 int I915_BIT_6_SWIZZLE_9_10_17 ;
 int I915_BIT_6_SWIZZLE_9_11 ;
 int I915_BIT_6_SWIZZLE_9_17 ;
 int I915_BIT_6_SWIZZLE_NONE ;
 int I915_BIT_6_SWIZZLE_UNKNOWN ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_G33 (struct drm_i915_private*) ;
 scalar_t__ IS_G45 (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_I965G (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int MAD_DIMM_A_SIZE_MASK ;
 int MAD_DIMM_B_SIZE_MASK ;
 int MAD_DIMM_C0 ;
 int MAD_DIMM_C1 ;
 int QUIRK_PIN_SWIZZLED_PAGES ;
 int intel_uncore_read (struct intel_uncore*,int ) ;

__attribute__((used)) static void detect_bit_6_swizzle(struct drm_i915_private *i915)
{
 struct intel_uncore *uncore = &i915->uncore;
 u32 swizzle_x = I915_BIT_6_SWIZZLE_UNKNOWN;
 u32 swizzle_y = I915_BIT_6_SWIZZLE_UNKNOWN;

 if (INTEL_GEN(i915) >= 8 || IS_VALLEYVIEW(i915)) {







  swizzle_x = I915_BIT_6_SWIZZLE_NONE;
  swizzle_y = I915_BIT_6_SWIZZLE_NONE;
 } else if (INTEL_GEN(i915) >= 6) {
  if (i915->preserve_bios_swizzle) {
   if (intel_uncore_read(uncore, DISP_ARB_CTL) &
       DISP_TILE_SURFACE_SWIZZLING) {
    swizzle_x = I915_BIT_6_SWIZZLE_9_10;
    swizzle_y = I915_BIT_6_SWIZZLE_9;
   } else {
    swizzle_x = I915_BIT_6_SWIZZLE_NONE;
    swizzle_y = I915_BIT_6_SWIZZLE_NONE;
   }
  } else {
   u32 dimm_c0, dimm_c1;
   dimm_c0 = intel_uncore_read(uncore, MAD_DIMM_C0);
   dimm_c1 = intel_uncore_read(uncore, MAD_DIMM_C1);
   dimm_c0 &= MAD_DIMM_A_SIZE_MASK | MAD_DIMM_B_SIZE_MASK;
   dimm_c1 &= MAD_DIMM_A_SIZE_MASK | MAD_DIMM_B_SIZE_MASK;







   if (dimm_c0 == dimm_c1) {
    swizzle_x = I915_BIT_6_SWIZZLE_9_10;
    swizzle_y = I915_BIT_6_SWIZZLE_9;
   } else {
    swizzle_x = I915_BIT_6_SWIZZLE_NONE;
    swizzle_y = I915_BIT_6_SWIZZLE_NONE;
   }
  }
 } else if (IS_GEN(i915, 5)) {




  swizzle_x = I915_BIT_6_SWIZZLE_9_10;
  swizzle_y = I915_BIT_6_SWIZZLE_9;
 } else if (IS_GEN(i915, 2)) {




  swizzle_x = I915_BIT_6_SWIZZLE_NONE;
  swizzle_y = I915_BIT_6_SWIZZLE_NONE;
 } else if (IS_G45(i915) || IS_I965G(i915) || IS_G33(i915)) {
  if (intel_uncore_read(uncore, C0DRB3) ==
      intel_uncore_read(uncore, C1DRB3)) {
   swizzle_x = I915_BIT_6_SWIZZLE_9_10;
   swizzle_y = I915_BIT_6_SWIZZLE_9;
  }
 } else {
  u32 dcc = intel_uncore_read(uncore, DCC);
  switch (dcc & DCC_ADDRESSING_MODE_MASK) {
  case 128:
  case 130:
   swizzle_x = I915_BIT_6_SWIZZLE_NONE;
   swizzle_y = I915_BIT_6_SWIZZLE_NONE;
   break;
  case 129:
   if (dcc & DCC_CHANNEL_XOR_DISABLE) {




    swizzle_x = I915_BIT_6_SWIZZLE_9_10;
    swizzle_y = I915_BIT_6_SWIZZLE_9;
   } else if ((dcc & DCC_CHANNEL_XOR_BIT_17) == 0) {

    swizzle_x = I915_BIT_6_SWIZZLE_9_10_11;
    swizzle_y = I915_BIT_6_SWIZZLE_9_11;
   } else {

    swizzle_x = I915_BIT_6_SWIZZLE_9_10_17;
    swizzle_y = I915_BIT_6_SWIZZLE_9_17;
   }
   break;
  }


  if (IS_GEN(i915, 4) &&
      !(intel_uncore_read(uncore, DCC2) & DCC2_MODIFIED_ENHANCED_DISABLE)) {
   swizzle_x = I915_BIT_6_SWIZZLE_UNKNOWN;
   swizzle_y = I915_BIT_6_SWIZZLE_UNKNOWN;
  }

  if (dcc == 0xffffffff) {
   DRM_ERROR("Couldn't read from MCHBAR.  "
      "Disabling tiling.\n");
   swizzle_x = I915_BIT_6_SWIZZLE_UNKNOWN;
   swizzle_y = I915_BIT_6_SWIZZLE_UNKNOWN;
  }
 }

 if (swizzle_x == I915_BIT_6_SWIZZLE_UNKNOWN ||
     swizzle_y == I915_BIT_6_SWIZZLE_UNKNOWN) {
  i915->quirks |= QUIRK_PIN_SWIZZLED_PAGES;
  swizzle_x = I915_BIT_6_SWIZZLE_NONE;
  swizzle_y = I915_BIT_6_SWIZZLE_NONE;
 }

 i915->mm.bit_6_swizzle_x = swizzle_x;
 i915->mm.bit_6_swizzle_y = swizzle_y;
}
