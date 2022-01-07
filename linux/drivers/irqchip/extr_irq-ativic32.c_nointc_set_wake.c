
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct irq_data {int hwirq; } ;


 int NDS32_SR_INT_MASK ;
 int __assign_bit (int,unsigned long*,int) ;
 unsigned long __nds32__mfsr (int ) ;
 int __nds32__mtsr_dsb (unsigned long,int ) ;
 unsigned long wake_mask ;

__attribute__((used)) static int nointc_set_wake(struct irq_data *data, unsigned int on)
{
 unsigned long int_mask = __nds32__mfsr(NDS32_SR_INT_MASK);
 static unsigned long irq_orig_bit;
 u32 bit = 1 << data->hwirq;

 if (on) {
  if (int_mask & bit)
   __assign_bit(data->hwirq, &irq_orig_bit, 1);
  else
   __assign_bit(data->hwirq, &irq_orig_bit, 0);

  __assign_bit(data->hwirq, &int_mask, 1);
  __assign_bit(data->hwirq, &wake_mask, 1);

 } else {
  if (!(irq_orig_bit & bit))
   __assign_bit(data->hwirq, &int_mask, 0);

  __assign_bit(data->hwirq, &wake_mask, 0);
  __assign_bit(data->hwirq, &irq_orig_bit, 0);
 }

 __nds32__mtsr_dsb(int_mask, NDS32_SR_INT_MASK);

 return 0;
}
