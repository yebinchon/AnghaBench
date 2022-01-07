
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int i915_reg_t ;


 scalar_t__ i915_mmio_reg_offset (int const) ;

__attribute__((used)) static int mmio_reg_cmp(u32 key, const i915_reg_t *reg)
{
 u32 offset = i915_mmio_reg_offset(*reg);

 if (key < offset)
  return -1;
 else if (key > offset)
  return 1;
 else
  return 0;
}
