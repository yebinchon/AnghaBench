
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv7511 {int regmap; } ;


 unsigned int ADV7511_INT0_HPD ;
 int ADV7511_REG_INT (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static bool adv7511_hpd(struct adv7511 *adv7511)
{
 unsigned int irq0;
 int ret;

 ret = regmap_read(adv7511->regmap, ADV7511_REG_INT(0), &irq0);
 if (ret < 0)
  return 0;

 if (irq0 & ADV7511_INT0_HPD) {
  regmap_write(adv7511->regmap, ADV7511_REG_INT(0),
        ADV7511_INT0_HPD);
  return 1;
 }

 return 0;
}
