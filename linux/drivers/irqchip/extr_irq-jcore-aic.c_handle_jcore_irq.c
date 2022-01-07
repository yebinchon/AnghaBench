
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 int handle_percpu_irq (struct irq_desc*) ;
 int handle_simple_irq (struct irq_desc*) ;
 int irq_desc_get_irq_data (struct irq_desc*) ;
 scalar_t__ irqd_is_per_cpu (int ) ;

__attribute__((used)) static void handle_jcore_irq(struct irq_desc *desc)
{
 if (irqd_is_per_cpu(irq_desc_get_irq_data(desc)))
  handle_percpu_irq(desc);
 else
  handle_simple_irq(desc);
}
