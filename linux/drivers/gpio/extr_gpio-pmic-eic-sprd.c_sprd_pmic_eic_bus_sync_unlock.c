
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_pmic_eic {int* reg; int buslock; } ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int IRQ_TYPE_EDGE_BOTH ;
 size_t REG_IE ;
 size_t REG_IEV ;
 size_t REG_TRIG ;
 int SPRD_PMIC_EIC_IE ;
 int SPRD_PMIC_EIC_IEV ;
 int SPRD_PMIC_EIC_TRIG ;
 struct sprd_pmic_eic* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_get_trigger_type (struct irq_data*) ;
 int irqd_to_hwirq (struct irq_data*) ;
 int mutex_unlock (int *) ;
 int sprd_pmic_eic_get (struct gpio_chip*,int) ;
 int sprd_pmic_eic_update (struct gpio_chip*,int,int ,int) ;

__attribute__((used)) static void sprd_pmic_eic_bus_sync_unlock(struct irq_data *data)
{
 struct gpio_chip *chip = irq_data_get_irq_chip_data(data);
 struct sprd_pmic_eic *pmic_eic = gpiochip_get_data(chip);
 u32 trigger = irqd_get_trigger_type(data);
 u32 offset = irqd_to_hwirq(data);
 int state;


 if (trigger & IRQ_TYPE_EDGE_BOTH) {
  state = sprd_pmic_eic_get(chip, offset);
  if (state)
   sprd_pmic_eic_update(chip, offset, SPRD_PMIC_EIC_IEV, 0);
  else
   sprd_pmic_eic_update(chip, offset, SPRD_PMIC_EIC_IEV, 1);
 } else {
  sprd_pmic_eic_update(chip, offset, SPRD_PMIC_EIC_IEV,
         pmic_eic->reg[REG_IEV]);
 }


 sprd_pmic_eic_update(chip, offset, SPRD_PMIC_EIC_IE,
        pmic_eic->reg[REG_IE]);

 sprd_pmic_eic_update(chip, offset, SPRD_PMIC_EIC_TRIG,
        pmic_eic->reg[REG_TRIG]);

 mutex_unlock(&pmic_eic->buslock);
}
