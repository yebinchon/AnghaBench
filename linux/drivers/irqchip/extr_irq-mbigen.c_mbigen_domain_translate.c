
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_fwspec {int param_count; unsigned long* param; int fwnode; } ;
struct irq_domain {int dummy; } ;


 int EINVAL ;
 unsigned long IRQ_TYPE_EDGE_RISING ;
 unsigned long IRQ_TYPE_LEVEL_HIGH ;
 unsigned long MAXIMUM_IRQ_PIN_NUM ;
 unsigned long RESERVED_IRQ_PER_MBIGEN_CHIP ;
 scalar_t__ is_acpi_device_node (int ) ;
 scalar_t__ is_of_node (int ) ;

__attribute__((used)) static int mbigen_domain_translate(struct irq_domain *d,
        struct irq_fwspec *fwspec,
        unsigned long *hwirq,
        unsigned int *type)
{
 if (is_of_node(fwspec->fwnode) || is_acpi_device_node(fwspec->fwnode)) {
  if (fwspec->param_count != 2)
   return -EINVAL;

  if ((fwspec->param[0] > MAXIMUM_IRQ_PIN_NUM) ||
   (fwspec->param[0] < RESERVED_IRQ_PER_MBIGEN_CHIP))
   return -EINVAL;
  else
   *hwirq = fwspec->param[0];


  if ((fwspec->param[1] == IRQ_TYPE_EDGE_RISING) ||
   (fwspec->param[1] == IRQ_TYPE_LEVEL_HIGH))
   *type = fwspec->param[1];
  else
   return -EINVAL;

  return 0;
 }
 return -EINVAL;
}
