
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixp4xx_irq {struct irq_domain* domain; } ;
struct irq_domain {int dummy; } ;


 struct ixp4xx_irq ixirq ;

struct irq_domain *ixp4xx_get_irq_domain(void)
{
 struct ixp4xx_irq *ixi = &ixirq;

 return ixi->domain;
}
