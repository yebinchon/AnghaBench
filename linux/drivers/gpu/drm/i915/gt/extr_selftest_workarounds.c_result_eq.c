
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct intel_engine_cs {int i915; } ;
typedef int i915_reg_t ;


 int i915_mmio_reg_offset (int ) ;
 int pardon_reg (int ,int ) ;
 int pr_err (char*,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static bool result_eq(struct intel_engine_cs *engine,
        u32 a, u32 b, i915_reg_t reg)
{
 if (a != b && !pardon_reg(engine->i915, reg)) {
  pr_err("Whitelisted register 0x%4x not context saved: A=%08x, B=%08x\n",
         i915_mmio_reg_offset(reg), a, b);
  return 0;
 }

 return 1;
}
