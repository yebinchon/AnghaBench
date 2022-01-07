
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int BXT_WOPCM_RC6_CTX_RESERVED ;
 int CNL_WOPCM_HW_CTX_RESERVED ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_GEN9_LP (struct drm_i915_private*) ;

__attribute__((used)) static inline u32 context_reserved_size(struct drm_i915_private *i915)
{
 if (IS_GEN9_LP(i915))
  return BXT_WOPCM_RC6_CTX_RESERVED;
 else if (INTEL_GEN(i915) >= 10)
  return CNL_WOPCM_HW_CTX_RESERVED;
 else
  return 0;
}
