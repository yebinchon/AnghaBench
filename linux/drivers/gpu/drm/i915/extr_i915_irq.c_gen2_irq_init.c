
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore {int dummy; } ;


 int GEN2_IER ;
 int GEN2_IMR ;
 int gen2_assert_iir_is_zero (struct intel_uncore*) ;
 int intel_uncore_posting_read16 (struct intel_uncore*,int ) ;
 int intel_uncore_write16 (struct intel_uncore*,int ,int ) ;

void gen2_irq_init(struct intel_uncore *uncore,
     u32 imr_val, u32 ier_val)
{
 gen2_assert_iir_is_zero(uncore);

 intel_uncore_write16(uncore, GEN2_IER, ier_val);
 intel_uncore_write16(uncore, GEN2_IMR, imr_val);
 intel_uncore_posting_read16(uncore, GEN2_IMR);
}
