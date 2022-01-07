
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct intel_uncore {int dummy; } ;
typedef int i915_reg_t ;


 int WARN (int,char*,int ,scalar_t__) ;
 int i915_mmio_reg_offset (int ) ;
 int intel_uncore_posting_read (struct intel_uncore*,int ) ;
 scalar_t__ intel_uncore_read (struct intel_uncore*,int ) ;
 int intel_uncore_write (struct intel_uncore*,int ,int) ;

__attribute__((used)) static void gen3_assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg)
{
 u32 val = intel_uncore_read(uncore, reg);

 if (val == 0)
  return;

 WARN(1, "Interrupt register 0x%x is not zero: 0x%08x\n",
      i915_mmio_reg_offset(reg), val);
 intel_uncore_write(uncore, reg, 0xffffffff);
 intel_uncore_posting_read(uncore, reg);
 intel_uncore_write(uncore, reg, 0xffffffff);
 intel_uncore_posting_read(uncore, reg);
}
