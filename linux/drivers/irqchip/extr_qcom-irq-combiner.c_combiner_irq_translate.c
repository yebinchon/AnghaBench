
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_fwspec {int param_count; int* param; int fwnode; } ;
struct irq_domain {struct combiner* host_data; } ;
struct combiner {int nirqs; } ;


 int EINVAL ;
 int IORESOURCE_IRQ_HIGHEDGE ;
 int IORESOURCE_IRQ_LOWEDGE ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ is_acpi_node (int ) ;

__attribute__((used)) static int combiner_irq_translate(struct irq_domain *d, struct irq_fwspec *fws,
      unsigned long *hwirq, unsigned int *type)
{
 struct combiner *combiner = d->host_data;

 if (is_acpi_node(fws->fwnode)) {
  if (WARN_ON((fws->param_count != 2) ||
       (fws->param[0] >= combiner->nirqs) ||
       (fws->param[1] & IORESOURCE_IRQ_LOWEDGE) ||
       (fws->param[1] & IORESOURCE_IRQ_HIGHEDGE)))
   return -EINVAL;

  *hwirq = fws->param[0];
  *type = fws->param[1];
  return 0;
 }

 return -EINVAL;
}
