
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct intel_uncore {int dummy; } ;


 int GEN2_IIR ;
 int WARN (int,char*,int ,scalar_t__) ;
 int i915_mmio_reg_offset (int ) ;
 int intel_uncore_posting_read16 (struct intel_uncore*,int ) ;
 scalar_t__ intel_uncore_read16 (struct intel_uncore*,int ) ;
 int intel_uncore_write16 (struct intel_uncore*,int ,int) ;

__attribute__((used)) static void gen2_assert_iir_is_zero(struct intel_uncore *uncore)
{
 u16 val = intel_uncore_read16(uncore, GEN2_IIR);

 if (val == 0)
  return;

 WARN(1, "Interrupt register 0x%x is not zero: 0x%08x\n",
      i915_mmio_reg_offset(GEN2_IIR), val);
 intel_uncore_write16(uncore, GEN2_IIR, 0xffff);
 intel_uncore_posting_read16(uncore, GEN2_IIR);
 intel_uncore_write16(uncore, GEN2_IIR, 0xffff);
 intel_uncore_posting_read16(uncore, GEN2_IIR);
}
