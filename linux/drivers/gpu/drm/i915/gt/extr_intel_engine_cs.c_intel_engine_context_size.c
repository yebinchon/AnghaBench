
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int BUILD_BUG_ON (int) ;

 int CXT_SIZE ;
 int DEFAULT_LR_CONTEXT_RENDER_SIZE ;
 int DRM_DEBUG_DRIVER (char*,int,int,int ) ;
 int GEN10_LR_CONTEXT_RENDER_SIZE ;
 int GEN11_LR_CONTEXT_RENDER_SIZE ;
 int GEN6_CXT_TOTAL_SIZE (int) ;
 int GEN7_CXT_SIZE ;
 int GEN7_CXT_TOTAL_SIZE (int) ;
 int GEN8_LR_CONTEXT_OTHER_SIZE ;
 int GEN8_LR_CONTEXT_RENDER_SIZE ;
 int GEN9_LR_CONTEXT_RENDER_SIZE ;
 int HSW_CXT_TOTAL_SIZE ;
 scalar_t__ I915_GTT_PAGE_SIZE ;
 int I915_READ (int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int IS_HASWELL (struct drm_i915_private*) ;
 int MISSING_CASE (int) ;
 scalar_t__ PAGE_SIZE ;



 int round_up (int,scalar_t__) ;

u32 intel_engine_context_size(struct drm_i915_private *dev_priv, u8 class)
{
 u32 cxt_size;

 BUILD_BUG_ON(I915_GTT_PAGE_SIZE != PAGE_SIZE);

 switch (class) {
 case 130:
  switch (INTEL_GEN(dev_priv)) {
  default:
   MISSING_CASE(INTEL_GEN(dev_priv));
   return DEFAULT_LR_CONTEXT_RENDER_SIZE;
  case 12:
  case 11:
   return GEN11_LR_CONTEXT_RENDER_SIZE;
  case 10:
   return GEN10_LR_CONTEXT_RENDER_SIZE;
  case 9:
   return GEN9_LR_CONTEXT_RENDER_SIZE;
  case 8:
   return GEN8_LR_CONTEXT_RENDER_SIZE;
  case 7:
   if (IS_HASWELL(dev_priv))
    return HSW_CXT_TOTAL_SIZE;

   cxt_size = I915_READ(GEN7_CXT_SIZE);
   return round_up(GEN7_CXT_TOTAL_SIZE(cxt_size) * 64,
     PAGE_SIZE);
  case 6:
   cxt_size = I915_READ(CXT_SIZE);
   return round_up(GEN6_CXT_TOTAL_SIZE(cxt_size) * 64,
     PAGE_SIZE);
  case 5:
  case 4:
   cxt_size = I915_READ(CXT_SIZE) + 1;
   DRM_DEBUG_DRIVER("gen%d CXT_SIZE = %d bytes [0x%08x]\n",
      INTEL_GEN(dev_priv),
      cxt_size * 64,
      cxt_size - 1);
   return round_up(cxt_size * 64, PAGE_SIZE);
  case 3:
  case 2:

  case 1:
   return 0;
  }
  break;
 default:
  MISSING_CASE(class);

 case 129:
 case 128:
 case 131:
  if (INTEL_GEN(dev_priv) < 8)
   return 0;
  return GEN8_LR_CONTEXT_OTHER_SIZE;
 }
}
