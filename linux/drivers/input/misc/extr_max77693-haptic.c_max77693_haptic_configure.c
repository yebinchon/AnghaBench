
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77693_haptic {int dev_type; int type; int mode; int dev; int regmap_haptic; } ;


 int EINVAL ;
 int MAX77693_CONFIG2_HTYP ;
 int MAX77693_CONFIG2_MEN ;
 int MAX77693_CONFIG2_MODE ;
 int MAX77693_HAPTIC_PWM_DIVISOR_128 ;
 unsigned int MAX77693_HAPTIC_REG_CONFIG2 ;
 unsigned int MAX77843_HAP_REG_MCONFIG ;
 int MCONFIG_MEN_SHIFT ;
 int MCONFIG_MODE_SHIFT ;


 int dev_err (int ,char*,int) ;
 int regmap_write (int ,unsigned int,unsigned int) ;

__attribute__((used)) static int max77693_haptic_configure(struct max77693_haptic *haptic,
         bool enable)
{
 unsigned int value, config_reg;
 int error;

 switch (haptic->dev_type) {
 case 129:
  value = ((haptic->type << MAX77693_CONFIG2_MODE) |
   (enable << MAX77693_CONFIG2_MEN) |
   (haptic->mode << MAX77693_CONFIG2_HTYP) |
   MAX77693_HAPTIC_PWM_DIVISOR_128);
  config_reg = MAX77693_HAPTIC_REG_CONFIG2;
  break;
 case 128:
  value = (haptic->type << MCONFIG_MODE_SHIFT) |
   (enable << MCONFIG_MEN_SHIFT) |
   MAX77693_HAPTIC_PWM_DIVISOR_128;
  config_reg = MAX77843_HAP_REG_MCONFIG;
  break;
 default:
  return -EINVAL;
 }

 error = regmap_write(haptic->regmap_haptic,
        config_reg, value);
 if (error) {
  dev_err(haptic->dev,
   "failed to update haptic config: %d\n", error);
  return error;
 }

 return 0;
}
