
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 int cached_irq_mask ;
 int intenable ;
 int xtensa_set_sr (int,int ) ;

__attribute__((used)) static void xtensa_irq_unmask(struct irq_data *d)
{
 cached_irq_mask |= 1 << d->hwirq;
 xtensa_set_sr(cached_irq_mask, intenable);
}
