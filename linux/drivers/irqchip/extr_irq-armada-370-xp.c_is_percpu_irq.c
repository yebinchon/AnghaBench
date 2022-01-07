
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ irq_hw_number_t ;


 scalar_t__ ARMADA_370_XP_MAX_PER_CPU_IRQS ;

__attribute__((used)) static inline bool is_percpu_irq(irq_hw_number_t irq)
{
 if (irq <= ARMADA_370_XP_MAX_PER_CPU_IRQS)
  return 1;

 return 0;
}
