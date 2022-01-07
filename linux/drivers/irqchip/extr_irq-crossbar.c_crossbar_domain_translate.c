
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_fwspec {int param_count; unsigned long* param; int fwnode; } ;
struct irq_domain {int dummy; } ;


 int EINVAL ;
 unsigned int IRQ_TYPE_SENSE_MASK ;
 scalar_t__ is_of_node (int ) ;

__attribute__((used)) static int crossbar_domain_translate(struct irq_domain *d,
         struct irq_fwspec *fwspec,
         unsigned long *hwirq,
         unsigned int *type)
{
 if (is_of_node(fwspec->fwnode)) {
  if (fwspec->param_count != 3)
   return -EINVAL;


  if (fwspec->param[0] != 0)
   return -EINVAL;

  *hwirq = fwspec->param[1];
  *type = fwspec->param[2] & IRQ_TYPE_SENSE_MASK;
  return 0;
 }

 return -EINVAL;
}
