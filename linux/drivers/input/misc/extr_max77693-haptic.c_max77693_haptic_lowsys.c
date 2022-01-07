
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77693_haptic {scalar_t__ dev_type; int dev; int regmap_pmic; } ;


 int MAX77693_PMIC_LOW_SYS_MASK ;
 int MAX77693_PMIC_LOW_SYS_SHIFT ;
 int MAX77693_PMIC_REG_LSCNFG ;
 scalar_t__ TYPE_MAX77693 ;
 int dev_err (int ,char*,int) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int max77693_haptic_lowsys(struct max77693_haptic *haptic, bool enable)
{
 int error;

 if (haptic->dev_type != TYPE_MAX77693)
  return 0;

 error = regmap_update_bits(haptic->regmap_pmic,
       MAX77693_PMIC_REG_LSCNFG,
       MAX77693_PMIC_LOW_SYS_MASK,
       enable << MAX77693_PMIC_LOW_SYS_SHIFT);
 if (error) {
  dev_err(haptic->dev, "cannot update pmic regmap: %d\n", error);
  return error;
 }

 return 0;
}
