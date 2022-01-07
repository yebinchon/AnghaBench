
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_fwspec {int param_count; scalar_t__* param; int fwnode; } ;
struct irq_domain {struct exiu_irq_data* host_data; } ;
struct exiu_irq_data {unsigned long spi_base; } ;


 int EINVAL ;
 scalar_t__ GIC_SPI ;
 unsigned int IRQ_TYPE_SENSE_MASK ;
 scalar_t__ is_of_node (int ) ;

__attribute__((used)) static int exiu_domain_translate(struct irq_domain *domain,
     struct irq_fwspec *fwspec,
     unsigned long *hwirq,
     unsigned int *type)
{
 struct exiu_irq_data *info = domain->host_data;

 if (is_of_node(fwspec->fwnode)) {
  if (fwspec->param_count != 3)
   return -EINVAL;

  if (fwspec->param[0] != GIC_SPI)
   return -EINVAL;

  *hwirq = fwspec->param[1] - info->spi_base;
  *type = fwspec->param[2] & IRQ_TYPE_SENSE_MASK;
 } else {
  if (fwspec->param_count != 2)
   return -EINVAL;
  *hwirq = fwspec->param[0];
  *type = fwspec->param[2] & IRQ_TYPE_SENSE_MASK;
 }
 return 0;
}
