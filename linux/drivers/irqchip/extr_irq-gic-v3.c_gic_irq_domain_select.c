
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_fwspec {scalar_t__ fwnode; int param_count; int* param; } ;
struct irq_domain {scalar_t__ fwnode; } ;
typedef enum irq_domain_bus_token { ____Placeholder_irq_domain_bus_token } irq_domain_bus_token ;
struct TYPE_2__ {struct irq_domain* domain; int * ppi_descs; } ;


 TYPE_1__ gic_data ;
 int is_of_node (scalar_t__) ;
 struct irq_domain* partition_get_domain (int ) ;

__attribute__((used)) static int gic_irq_domain_select(struct irq_domain *d,
     struct irq_fwspec *fwspec,
     enum irq_domain_bus_token bus_token)
{

        if (fwspec->fwnode != d->fwnode)
  return 0;


 if (!is_of_node(fwspec->fwnode))
  return 1;





 if (fwspec->param_count >= 4 &&
     fwspec->param[0] == 1 && fwspec->param[3] != 0 &&
     gic_data.ppi_descs)
  return d == partition_get_domain(gic_data.ppi_descs[fwspec->param[1]]);

 return d == gic_data.domain;
}
