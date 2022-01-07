
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore {int dummy; } ;
typedef int i915_reg_t ;


 int intel_uncore_posting_read (struct intel_uncore*,int ) ;
 int intel_uncore_write (struct intel_uncore*,int ,int) ;

void gen3_irq_reset(struct intel_uncore *uncore, i915_reg_t imr,
      i915_reg_t iir, i915_reg_t ier)
{
 intel_uncore_write(uncore, imr, 0xffffffff);
 intel_uncore_posting_read(uncore, imr);

 intel_uncore_write(uncore, ier, 0);


 intel_uncore_write(uncore, iir, 0xffffffff);
 intel_uncore_posting_read(uncore, iir);
 intel_uncore_write(uncore, iir, 0xffffffff);
 intel_uncore_posting_read(uncore, iir);
}
