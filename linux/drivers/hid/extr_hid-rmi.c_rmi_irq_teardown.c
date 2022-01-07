
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_data {scalar_t__ rmi_irq; struct irq_domain* domain; } ;
struct irq_domain {int dummy; } ;


 int irq_dispose_mapping (int ) ;
 int irq_domain_remove (struct irq_domain*) ;
 int irq_find_mapping (struct irq_domain*,int ) ;

__attribute__((used)) static void rmi_irq_teardown(void *data)
{
 struct rmi_data *hdata = data;
 struct irq_domain *domain = hdata->domain;

 if (!domain)
  return;

 irq_dispose_mapping(irq_find_mapping(domain, 0));

 irq_domain_remove(domain);
 hdata->domain = ((void*)0);
 hdata->rmi_irq = 0;
}
