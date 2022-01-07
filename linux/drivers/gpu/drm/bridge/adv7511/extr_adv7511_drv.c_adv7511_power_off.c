
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv7511 {scalar_t__ type; int powered; } ;


 scalar_t__ ADV7533 ;
 int __adv7511_power_off (struct adv7511*) ;
 int adv7533_dsi_power_off (struct adv7511*) ;

__attribute__((used)) static void adv7511_power_off(struct adv7511 *adv7511)
{
 __adv7511_power_off(adv7511);
 if (adv7511->type == ADV7533)
  adv7533_dsi_power_off(adv7511);
 adv7511->powered = 0;
}
