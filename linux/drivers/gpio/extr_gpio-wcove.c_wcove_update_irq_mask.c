
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcove_gpio {int regmap; scalar_t__ set_irq_mask; } ;


 unsigned int BIT (int) ;
 int GROUP0_NR_IRQS ;
 int GROUP1_NR_IRQS ;
 int IRQ_MASK_BASE ;
 int regmap_update_bits (int ,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void wcove_update_irq_mask(struct wcove_gpio *wg, int gpio)
{
 unsigned int reg, mask;

 if (gpio < GROUP0_NR_IRQS) {
  reg = IRQ_MASK_BASE;
  mask = BIT(gpio % GROUP0_NR_IRQS);
 } else {
  reg = IRQ_MASK_BASE + 1;
  mask = BIT((gpio - GROUP0_NR_IRQS) % GROUP1_NR_IRQS);
 }

 if (wg->set_irq_mask)
  regmap_update_bits(wg->regmap, reg, mask, mask);
 else
  regmap_update_bits(wg->regmap, reg, mask, 0);
}
