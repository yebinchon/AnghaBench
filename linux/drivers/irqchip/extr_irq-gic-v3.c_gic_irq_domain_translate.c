
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_fwspec {int param_count; int* param; int fwnode; } ;
struct irq_domain {int dummy; } ;


 int EINVAL ;
 int EPPI_BASE_INTID ;
 int ESPI_BASE_INTID ;


 unsigned int IRQ_TYPE_NONE ;
 unsigned int IRQ_TYPE_SENSE_MASK ;
 int WARN_ON (int) ;
 scalar_t__ is_fwnode_irqchip (int ) ;
 scalar_t__ is_of_node (int ) ;

__attribute__((used)) static int gic_irq_domain_translate(struct irq_domain *d,
        struct irq_fwspec *fwspec,
        unsigned long *hwirq,
        unsigned int *type)
{
 if (is_of_node(fwspec->fwnode)) {
  if (fwspec->param_count < 3)
   return -EINVAL;

  switch (fwspec->param[0]) {
  case 0:
   *hwirq = fwspec->param[1] + 32;
   break;
  case 1:
   *hwirq = fwspec->param[1] + 16;
   break;
  case 2:
   *hwirq = fwspec->param[1] + ESPI_BASE_INTID;
   break;
  case 3:
   *hwirq = fwspec->param[1] + EPPI_BASE_INTID;
   break;
  case 129:
   *hwirq = fwspec->param[1];
   break;
  case 128:
   *hwirq = fwspec->param[1];
   if (fwspec->param[1] >= 16)
    *hwirq += EPPI_BASE_INTID - 16;
   else
    *hwirq += 16;
   break;
  default:
   return -EINVAL;
  }

  *type = fwspec->param[2] & IRQ_TYPE_SENSE_MASK;





  WARN_ON(*type == IRQ_TYPE_NONE &&
   fwspec->param[0] != 128);
  return 0;
 }

 if (is_fwnode_irqchip(fwspec->fwnode)) {
  if(fwspec->param_count != 2)
   return -EINVAL;

  *hwirq = fwspec->param[0];
  *type = fwspec->param[1];

  WARN_ON(*type == IRQ_TYPE_NONE);
  return 0;
 }

 return -EINVAL;
}
