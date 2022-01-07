
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_pmic_eic {int* reg; } ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int ENOTSUPP ;





 size_t REG_IEV ;
 struct sprd_pmic_eic* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static int sprd_pmic_eic_irq_set_type(struct irq_data *data,
          unsigned int flow_type)
{
 struct gpio_chip *chip = irq_data_get_irq_chip_data(data);
 struct sprd_pmic_eic *pmic_eic = gpiochip_get_data(chip);

 switch (flow_type) {
 case 129:
  pmic_eic->reg[REG_IEV] = 1;
  break;
 case 128:
  pmic_eic->reg[REG_IEV] = 0;
  break;
 case 130:
 case 131:
 case 132:




  break;
 default:
  return -ENOTSUPP;
 }

 return 0;
}
