
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int hwirq; } ;


 unsigned int HW_IRQ_MX_BASE ;
 int MIENG ;
 unsigned int XCHAL_INTTYPE_MASK_EXTERN_EDGE ;
 unsigned int XCHAL_INTTYPE_MASK_EXTERN_LEVEL ;
 unsigned int __this_cpu_read (int ) ;
 int __this_cpu_write (int ,unsigned int) ;
 int cached_irq_mask ;
 int intenable ;
 int set_er (unsigned int,int ) ;
 unsigned int xtensa_get_ext_irq_no (unsigned int) ;
 int xtensa_set_sr (unsigned int,int ) ;

__attribute__((used)) static void xtensa_mx_irq_mask(struct irq_data *d)
{
 unsigned int mask = 1u << d->hwirq;

 if (mask & (XCHAL_INTTYPE_MASK_EXTERN_EDGE |
      XCHAL_INTTYPE_MASK_EXTERN_LEVEL)) {
  unsigned int ext_irq = xtensa_get_ext_irq_no(d->hwirq);

  if (ext_irq >= HW_IRQ_MX_BASE) {
   set_er(1u << (ext_irq - HW_IRQ_MX_BASE), MIENG);
   return;
  }
 }
 mask = __this_cpu_read(cached_irq_mask) & ~mask;
 __this_cpu_write(cached_irq_mask, mask);
 xtensa_set_sr(mask, intenable);
}
