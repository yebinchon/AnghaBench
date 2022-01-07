
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int bus_token; int fwnode; } ;
struct device_node {int dummy; } ;
typedef enum irq_domain_bus_token { ____Placeholder_irq_domain_bus_token } irq_domain_bus_token ;



 struct device_node* to_of_node (int ) ;

int gic_ipi_domain_match(struct irq_domain *d, struct device_node *node,
    enum irq_domain_bus_token bus_token)
{
 bool is_ipi;

 switch (bus_token) {
 case 128:
  is_ipi = d->bus_token == bus_token;
  return (!node || to_of_node(d->fwnode) == node) && is_ipi;
  break;
 default:
  return 0;
 }
}
