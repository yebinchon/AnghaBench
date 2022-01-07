
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 int IE_SW0 ;
 int clear_c0_status (int) ;
 int irq_disable_hazard () ;

__attribute__((used)) static inline void mask_mips_irq(struct irq_data *d)
{
 clear_c0_status(IE_SW0 << d->hwirq);
 irq_disable_hazard();
}
