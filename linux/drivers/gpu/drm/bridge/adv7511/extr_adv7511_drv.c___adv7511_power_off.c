
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv7511 {int regmap; } ;


 int ADV7511_INT1_DDC_ERROR ;
 int ADV7511_POWER_POWER_DOWN ;
 int ADV7511_REG_INT_ENABLE (int) ;
 int ADV7511_REG_POWER ;
 int regcache_mark_dirty (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void __adv7511_power_off(struct adv7511 *adv7511)
{

 regmap_update_bits(adv7511->regmap, ADV7511_REG_POWER,
      ADV7511_POWER_POWER_DOWN,
      ADV7511_POWER_POWER_DOWN);
 regmap_update_bits(adv7511->regmap,
      ADV7511_REG_INT_ENABLE(1),
      ADV7511_INT1_DDC_ERROR, 0);
 regcache_mark_dirty(adv7511->regmap);
}
