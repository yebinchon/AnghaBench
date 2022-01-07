
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore {int dummy; } ;


 int GEN2_IER ;
 int GEN2_IIR ;
 int GEN2_IMR ;
 int intel_uncore_posting_read16 (struct intel_uncore*,int ) ;
 int intel_uncore_write16 (struct intel_uncore*,int ,int) ;

void gen2_irq_reset(struct intel_uncore *uncore)
{
 intel_uncore_write16(uncore, GEN2_IMR, 0xffff);
 intel_uncore_posting_read16(uncore, GEN2_IMR);

 intel_uncore_write16(uncore, GEN2_IER, 0);


 intel_uncore_write16(uncore, GEN2_IIR, 0xffff);
 intel_uncore_posting_read16(uncore, GEN2_IIR);
 intel_uncore_write16(uncore, GEN2_IIR, 0xffff);
 intel_uncore_posting_read16(uncore, GEN2_IIR);
}
