
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_fwspec {int param_count; unsigned long* param; int fwnode; } ;
struct irq_domain {int dummy; } ;


 int EINVAL ;
 unsigned int IRQ_TYPE_NONE ;
 int WARN_ON (int) ;
 scalar_t__ is_fwnode_irqchip (int ) ;
 scalar_t__ is_of_node (int ) ;

__attribute__((used)) static int ixp4xx_irq_domain_translate(struct irq_domain *domain,
           struct irq_fwspec *fwspec,
           unsigned long *hwirq,
           unsigned int *type)
{

 if (is_of_node(fwspec->fwnode) && fwspec->param_count == 2) {
  *hwirq = fwspec->param[0];
  *type = fwspec->param[1];
  return 0;
 }

 if (is_fwnode_irqchip(fwspec->fwnode)) {
  if (fwspec->param_count != 2)
   return -EINVAL;
  *hwirq = fwspec->param[0];
  *type = fwspec->param[1];
  WARN_ON(*type == IRQ_TYPE_NONE);
  return 0;
 }

 return -EINVAL;
}
