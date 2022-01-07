
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_pmic_eic {int buslock; } ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;


 struct sprd_pmic_eic* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_lock (int *) ;

__attribute__((used)) static void sprd_pmic_eic_bus_lock(struct irq_data *data)
{
 struct gpio_chip *chip = irq_data_get_irq_chip_data(data);
 struct sprd_pmic_eic *pmic_eic = gpiochip_get_data(chip);

 mutex_lock(&pmic_eic->buslock);
}
