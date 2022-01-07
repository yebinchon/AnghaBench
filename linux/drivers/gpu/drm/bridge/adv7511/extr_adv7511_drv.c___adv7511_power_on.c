
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adv7511 {int current_edid_segment; int regmap; TYPE_1__* i2c_main; } ;
struct TYPE_2__ {scalar_t__ irq; } ;


 int ADV7511_INT0_EDID_READY ;
 int ADV7511_INT0_HPD ;
 int ADV7511_INT1_DDC_ERROR ;
 int ADV7511_POWER_POWER_DOWN ;
 int ADV7511_REG_INT_ENABLE (int) ;
 int ADV7511_REG_POWER ;
 int ADV7511_REG_POWER2 ;
 int ADV7511_REG_POWER2_HPD_SRC_MASK ;
 int ADV7511_REG_POWER2_HPD_SRC_NONE ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void __adv7511_power_on(struct adv7511 *adv7511)
{
 adv7511->current_edid_segment = -1;

 regmap_update_bits(adv7511->regmap, ADV7511_REG_POWER,
      ADV7511_POWER_POWER_DOWN, 0);
 if (adv7511->i2c_main->irq) {





  regmap_write(adv7511->regmap, ADV7511_REG_INT_ENABLE(0),
        ADV7511_INT0_EDID_READY | ADV7511_INT0_HPD);
  regmap_update_bits(adv7511->regmap,
       ADV7511_REG_INT_ENABLE(1),
       ADV7511_INT1_DDC_ERROR,
       ADV7511_INT1_DDC_ERROR);
 }
 regmap_update_bits(adv7511->regmap, ADV7511_REG_POWER2,
      ADV7511_REG_POWER2_HPD_SRC_MASK,
      ADV7511_REG_POWER2_HPD_SRC_NONE);
}
