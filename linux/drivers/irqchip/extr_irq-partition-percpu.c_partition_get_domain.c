
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partition_desc {struct irq_domain* domain; } ;
struct irq_domain {int dummy; } ;



struct irq_domain *partition_get_domain(struct partition_desc *dsc)
{
 if (dsc)
  return dsc->domain;

 return ((void*)0);
}
