
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77693_haptic {scalar_t__ dev_type; int dev; int regmap_haptic; } ;


 int MAINCTRL1_BIASEN_SHIFT ;
 int MAX77843_MAINCTRL1_BIASEN_MASK ;
 int MAX77843_SYS_REG_MAINCTRL1 ;
 scalar_t__ TYPE_MAX77843 ;
 int dev_err (int ,char*,char*,int) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int max77843_haptic_bias(struct max77693_haptic *haptic, bool on)
{
 int error;

 if (haptic->dev_type != TYPE_MAX77843)
  return 0;

 error = regmap_update_bits(haptic->regmap_haptic,
       MAX77843_SYS_REG_MAINCTRL1,
       MAX77843_MAINCTRL1_BIASEN_MASK,
       on << MAINCTRL1_BIASEN_SHIFT);
 if (error) {
  dev_err(haptic->dev, "failed to %s bias: %d\n",
   on ? "enable" : "disable", error);
  return error;
 }

 return 0;
}
