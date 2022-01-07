
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regmap {int dummy; } ;
struct pmic8xxx_pwrkey {struct regmap* regmap; } ;


 int PM8921_SLEEP_CTRL ;
 int SLEEP_CTRL_SMPL_EN_RESET ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;

__attribute__((used)) static int pm8921_pwrkey_shutdown(struct pmic8xxx_pwrkey *pwrkey, bool reset)
{
 struct regmap *regmap = pwrkey->regmap;
 u8 mask = SLEEP_CTRL_SMPL_EN_RESET;
 u8 val = 0;


 if (reset)
  val = mask;
 return regmap_update_bits(regmap, PM8921_SLEEP_CTRL, mask, val);
}
