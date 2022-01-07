
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv7511 {scalar_t__ type; int powered; int regmap; } ;


 scalar_t__ ADV7533 ;
 int __adv7511_power_on (struct adv7511*) ;
 int adv7533_dsi_power_on (struct adv7511*) ;
 int regcache_sync (int ) ;

__attribute__((used)) static void adv7511_power_on(struct adv7511 *adv7511)
{
 __adv7511_power_on(adv7511);




 regcache_sync(adv7511->regmap);

 if (adv7511->type == ADV7533)
  adv7533_dsi_power_on(adv7511);
 adv7511->powered = 1;
}
