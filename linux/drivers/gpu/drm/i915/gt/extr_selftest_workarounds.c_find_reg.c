
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct regmask {int gen_mask; int reg; } ;
struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;
struct TYPE_2__ {int gen_mask; } ;


 TYPE_1__* INTEL_INFO (struct drm_i915_private*) ;
 scalar_t__ i915_mmio_reg_offset (int ) ;

__attribute__((used)) static bool find_reg(struct drm_i915_private *i915,
       i915_reg_t reg,
       const struct regmask *tbl,
       unsigned long count)
{
 u32 offset = i915_mmio_reg_offset(reg);

 while (count--) {
  if (INTEL_INFO(i915)->gen_mask & tbl->gen_mask &&
      i915_mmio_reg_offset(tbl->reg) == offset)
   return 1;
  tbl++;
 }

 return 0;
}
