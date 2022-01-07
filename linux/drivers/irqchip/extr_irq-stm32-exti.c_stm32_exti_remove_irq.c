
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;


 int irq_domain_remove (struct irq_domain*) ;

__attribute__((used)) static void stm32_exti_remove_irq(void *data)
{
 struct irq_domain *domain = data;

 irq_domain_remove(domain);
}
