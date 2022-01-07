
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {TYPE_1__* parent_data; } ;
struct cpumask {int dummy; } ;
struct TYPE_2__ {scalar_t__ chip; } ;


 int EINVAL ;
 int irq_chip_set_affinity_parent (struct irq_data*,struct cpumask const*,int) ;

__attribute__((used)) static int stm32_exti_h_set_affinity(struct irq_data *d,
         const struct cpumask *dest, bool force)
{
 if (d->parent_data->chip)
  return irq_chip_set_affinity_parent(d, dest, force);

 return -EINVAL;
}
