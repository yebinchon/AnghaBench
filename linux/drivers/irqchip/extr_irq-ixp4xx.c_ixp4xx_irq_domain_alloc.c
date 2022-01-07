
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixp4xx_irq {int irqchip; } ;
struct irq_fwspec {int dummy; } ;
struct irq_domain {struct ixp4xx_irq* host_data; } ;
typedef scalar_t__ irq_hw_number_t ;


 unsigned int IRQ_TYPE_NONE ;
 int handle_level_irq ;
 int irq_domain_set_info (struct irq_domain*,unsigned int,scalar_t__,int *,struct ixp4xx_irq*,int ,int *,int *) ;
 int irq_set_probe (unsigned int) ;
 int ixp4xx_irq_domain_translate (struct irq_domain*,struct irq_fwspec*,scalar_t__*,unsigned int*) ;

__attribute__((used)) static int ixp4xx_irq_domain_alloc(struct irq_domain *d,
       unsigned int irq, unsigned int nr_irqs,
       void *data)
{
 struct ixp4xx_irq *ixi = d->host_data;
 irq_hw_number_t hwirq;
 unsigned int type = IRQ_TYPE_NONE;
 struct irq_fwspec *fwspec = data;
 int ret;
 int i;

 ret = ixp4xx_irq_domain_translate(d, fwspec, &hwirq, &type);
 if (ret)
  return ret;

 for (i = 0; i < nr_irqs; i++) {






  irq_domain_set_info(d,
        irq + i,
        hwirq + i,
        &ixi->irqchip,
        ixi,
        handle_level_irq,
        ((void*)0), ((void*)0));
  irq_set_probe(irq + i);
 }

 return 0;
}
