
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
typedef scalar_t__ irq_hw_number_t ;


 scalar_t__ AMDGPU_MAX_IRQ_SRC_ID ;
 int EPERM ;
 int amdgpu_irq_chip ;
 int handle_simple_irq ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;

__attribute__((used)) static int amdgpu_irqdomain_map(struct irq_domain *d,
    unsigned int irq, irq_hw_number_t hwirq)
{
 if (hwirq >= AMDGPU_MAX_IRQ_SRC_ID)
  return -EPERM;

 irq_set_chip_and_handler(irq,
     &amdgpu_irq_chip, handle_simple_irq);
 return 0;
}
