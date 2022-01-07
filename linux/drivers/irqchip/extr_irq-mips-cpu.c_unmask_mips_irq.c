
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 int IE_SW0 ;
 int irq_enable_hazard () ;
 int set_c0_status (int) ;

__attribute__((used)) static inline void unmask_mips_irq(struct irq_data *d)
{
 set_c0_status(IE_SW0 << d->hwirq);
 irq_enable_hazard();
}
