
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsl2563_chip {int dummy; } ;


 int ENODEV ;
 int tsl2563_get_power (struct tsl2563_chip*) ;
 int tsl2563_set_power (struct tsl2563_chip*,int) ;

__attribute__((used)) static int tsl2563_detect(struct tsl2563_chip *chip)
{
 int ret;

 ret = tsl2563_set_power(chip, 1);
 if (ret)
  return ret;

 ret = tsl2563_get_power(chip);
 if (ret < 0)
  return ret;

 return ret ? 0 : -ENODEV;
}
