
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv7511 {int regmap_cec; } ;


 int regmap_write (int ,int,int) ;

void adv7533_dsi_power_off(struct adv7511 *adv)
{

 regmap_write(adv->regmap_cec, 0x03, 0x0b);

 regmap_write(adv->regmap_cec, 0x27, 0x0b);
}
