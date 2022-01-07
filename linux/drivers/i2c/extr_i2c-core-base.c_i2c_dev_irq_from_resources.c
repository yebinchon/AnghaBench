
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int flags; int start; } ;
struct irq_data {int dummy; } ;


 int IORESOURCE_BITS ;
 scalar_t__ IORESOURCE_IRQ ;
 struct irq_data* irq_get_irq_data (int) ;
 int irqd_set_trigger_type (struct irq_data*,int) ;
 scalar_t__ resource_type (struct resource const*) ;

int i2c_dev_irq_from_resources(const struct resource *resources,
          unsigned int num_resources)
{
 struct irq_data *irqd;
 int i;

 for (i = 0; i < num_resources; i++) {
  const struct resource *r = &resources[i];

  if (resource_type(r) != IORESOURCE_IRQ)
   continue;

  if (r->flags & IORESOURCE_BITS) {
   irqd = irq_get_irq_data(r->start);
   if (!irqd)
    break;

   irqd_set_trigger_type(irqd, r->flags & IORESOURCE_BITS);
  }

  return r->start;
 }

 return 0;
}
