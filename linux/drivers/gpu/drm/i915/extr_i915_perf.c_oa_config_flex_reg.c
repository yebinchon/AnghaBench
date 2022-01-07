
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct i915_oa_config {int flex_regs_len; TYPE_1__* flex_regs; } ;
typedef int i915_reg_t ;
struct TYPE_2__ {scalar_t__ value; int addr; } ;


 scalar_t__ i915_mmio_reg_offset (int ) ;

__attribute__((used)) static u32 oa_config_flex_reg(const struct i915_oa_config *oa_config,
         i915_reg_t reg)
{
 u32 mmio = i915_mmio_reg_offset(reg);
 int i;






 if (!oa_config)
  return 0;

 for (i = 0; i < oa_config->flex_regs_len; i++) {
  if (i915_mmio_reg_offset(oa_config->flex_regs[i].addr) == mmio)
   return oa_config->flex_regs[i].value;
 }

 return 0;
}
