
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct intel_engine_cs {int i915; } ;
typedef int i915_reg_t ;


 int i915_mmio_reg_offset (int ) ;
 int pr_err (char*,int ,scalar_t__) ;
 int writeonly_reg (int ,int ) ;

__attribute__((used)) static bool result_neq(struct intel_engine_cs *engine,
         u32 a, u32 b, i915_reg_t reg)
{
 if (a == b && !writeonly_reg(engine->i915, reg)) {
  pr_err("Whitelist register 0x%4x:%08x was unwritable\n",
         i915_mmio_reg_offset(reg), a);
  return 0;
 }

 return 1;
}
