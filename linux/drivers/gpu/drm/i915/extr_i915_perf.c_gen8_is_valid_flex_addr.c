
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;


 int ARRAY_SIZE (int const*) ;







 scalar_t__ i915_mmio_reg_offset (int const) ;

__attribute__((used)) static bool gen8_is_valid_flex_addr(struct drm_i915_private *dev_priv, u32 addr)
{
 static const i915_reg_t flex_eu_regs[] = {
  134,
  133,
  132,
  131,
  130,
  129,
  128,
 };
 int i;

 for (i = 0; i < ARRAY_SIZE(flex_eu_regs); i++) {
  if (i915_mmio_reg_offset(flex_eu_regs[i]) == addr)
   return 1;
 }
 return 0;
}
