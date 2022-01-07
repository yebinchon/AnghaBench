
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;
typedef int irq_hw_number_t ;


 int EINVAL ;


 struct device_node* irq_domain_get_of_node (struct irq_domain*) ;

__attribute__((used)) static int sdv_xlate(struct irq_domain *h, struct device_node *node,
  const u32 *intspec, u32 intsize, irq_hw_number_t *out_hwirq,
  u32 *out_type)
{
 u32 line, type;

 if (node != irq_domain_get_of_node(h))
  return -EINVAL;

 if (intsize < 2)
  return -EINVAL;

 line = *intspec;
 *out_hwirq = line;

 intspec++;
 type = *intspec;

 switch (type) {
 case 128:
 case 129:
  *out_type = type;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
