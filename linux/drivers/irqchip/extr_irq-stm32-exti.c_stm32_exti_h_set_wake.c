
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_exti_chip_data {int rlock; int wake_active; } ;
struct irq_data {int hwirq; } ;


 int BIT (int) ;
 int IRQS_PER_BANK ;
 struct stm32_exti_chip_data* irq_data_get_irq_chip_data (struct irq_data*) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;

__attribute__((used)) static int stm32_exti_h_set_wake(struct irq_data *d, unsigned int on)
{
 struct stm32_exti_chip_data *chip_data = irq_data_get_irq_chip_data(d);
 u32 mask = BIT(d->hwirq % IRQS_PER_BANK);

 raw_spin_lock(&chip_data->rlock);

 if (on)
  chip_data->wake_active |= mask;
 else
  chip_data->wake_active &= ~mask;

 raw_spin_unlock(&chip_data->rlock);

 return 0;
}
