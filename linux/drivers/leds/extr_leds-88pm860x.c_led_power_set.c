
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_chip {int dummy; } ;


 int EINVAL ;
 int RGB1_ENABLE ;
 int RGB2_ENABLE ;
 int pm8606_osc_disable (struct pm860x_chip*,int ) ;
 int pm8606_osc_enable (struct pm860x_chip*,int ) ;

__attribute__((used)) static int led_power_set(struct pm860x_chip *chip, int port, int on)
{
 int ret = -EINVAL;

 switch (port) {
 case 0:
 case 1:
 case 2:
  ret = on ? pm8606_osc_enable(chip, RGB1_ENABLE) :
   pm8606_osc_disable(chip, RGB1_ENABLE);
  break;
 case 3:
 case 4:
 case 5:
  ret = on ? pm8606_osc_enable(chip, RGB2_ENABLE) :
   pm8606_osc_disable(chip, RGB2_ENABLE);
  break;
 }
 return ret;
}
