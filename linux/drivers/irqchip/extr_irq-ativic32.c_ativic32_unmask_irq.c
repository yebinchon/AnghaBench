
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 unsigned long BIT (int ) ;
 int NDS32_SR_INT_MASK2 ;
 unsigned long __nds32__mfsr (int ) ;
 int __nds32__mtsr_dsb (unsigned long,int ) ;

__attribute__((used)) static void ativic32_unmask_irq(struct irq_data *data)
{
 unsigned long int_mask2 = __nds32__mfsr(NDS32_SR_INT_MASK2);
 __nds32__mtsr_dsb(int_mask2 | (BIT(data->hwirq)), NDS32_SR_INT_MASK2);
}
