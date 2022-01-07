
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_domain {struct intc_irqpin_priv* host_data; } ;
struct intc_irqpin_priv {int irq_chip; TYPE_1__* irq; } ;
typedef size_t irq_hw_number_t ;
struct TYPE_2__ {unsigned int domain_irq; size_t hw_irq; } ;


 int handle_level_irq ;
 int intc_irqpin_dbg (TYPE_1__*,char*) ;
 int intc_irqpin_irq_lock_class ;
 int intc_irqpin_irq_request_class ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_chip_data (unsigned int,struct intc_irqpin_priv*) ;
 int irq_set_lockdep_class (unsigned int,int *,int *) ;

__attribute__((used)) static int intc_irqpin_irq_domain_map(struct irq_domain *h, unsigned int virq,
          irq_hw_number_t hw)
{
 struct intc_irqpin_priv *p = h->host_data;

 p->irq[hw].domain_irq = virq;
 p->irq[hw].hw_irq = hw;

 intc_irqpin_dbg(&p->irq[hw], "map");
 irq_set_chip_data(virq, h->host_data);
 irq_set_lockdep_class(virq, &intc_irqpin_irq_lock_class,
         &intc_irqpin_irq_request_class);
 irq_set_chip_and_handler(virq, &p->irq_chip, handle_level_irq);
 return 0;
}
