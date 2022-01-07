
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int hwirq; } ;


 scalar_t__ WARN_ON (unsigned int) ;
 unsigned int XCHAL_INTTYPE_MASK_SOFTWARE ;
 int intset ;
 int xtensa_set_sr (unsigned int,int ) ;

__attribute__((used)) static int xtensa_irq_retrigger(struct irq_data *d)
{
 unsigned int mask = 1u << d->hwirq;

 if (WARN_ON(mask & ~XCHAL_INTTYPE_MASK_SOFTWARE))
  return 0;
 xtensa_set_sr(mask, intset);
 return 1;
}
