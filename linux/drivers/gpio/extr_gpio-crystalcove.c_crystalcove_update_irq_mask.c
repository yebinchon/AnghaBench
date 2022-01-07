
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crystalcove_gpio {int regmap; scalar_t__ set_irq_mask; } ;


 int BIT (int) ;
 int MGPIO0IRQS0 ;
 int MGPIO1IRQS0 ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static void crystalcove_update_irq_mask(struct crystalcove_gpio *cg,
     int gpio)
{
 u8 mirqs0 = gpio < 8 ? MGPIO0IRQS0 : MGPIO1IRQS0;
 int mask = BIT(gpio % 8);

 if (cg->set_irq_mask)
  regmap_update_bits(cg->regmap, mirqs0, mask, mask);
 else
  regmap_update_bits(cg->regmap, mirqs0, mask, 0);
}
