
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct gpio_bank {TYPE_1__ chip; } ;


 struct gpio_bank* omap_irq_data_get_bank (struct irq_data*) ;
 int pm_runtime_put (int ) ;

__attribute__((used)) static void gpio_irq_bus_sync_unlock(struct irq_data *data)
{
 struct gpio_bank *bank = omap_irq_data_get_bank(data);

 pm_runtime_put(bank->chip.parent);
}
