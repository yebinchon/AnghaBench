
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regmap {int dummy; } ;
struct pmic8xxx_pwrkey {struct regmap* regmap; } ;


 int BIT (int) ;
 int PM8058_L21_CTRL ;
 int PM8058_L22_CTRL ;
 int PM8058_S0_CTRL ;
 int PM8058_S0_TEST2 ;
 int PM8058_S1_CTRL ;
 int PM8058_S1_TEST2 ;
 int PM8058_S3_CTRL ;
 int PM8058_S3_TEST2 ;
 int PM8058_SLEEP_CTRL ;
 int REG_PM8058_VREG_EN_GRP_5_4 ;
 int REG_PM8058_VREG_EN_MSM ;
 int SLEEP_CTRL_SMPL_EN_RESET ;
 int pm8058_disable_ldo_locally_set_pull_down (struct regmap*,int ,int ,int) ;
 int pm8058_disable_smps_locally_set_pull_down (struct regmap*,int ,int ,int ,int) ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;

__attribute__((used)) static int pm8058_pwrkey_shutdown(struct pmic8xxx_pwrkey *pwrkey, bool reset)
{
 int error;
 struct regmap *regmap = pwrkey->regmap;
 u8 mask, val;


 if (!reset) {

  pm8058_disable_smps_locally_set_pull_down(regmap,
   PM8058_S0_CTRL, PM8058_S0_TEST2,
   REG_PM8058_VREG_EN_MSM, BIT(7));
  pm8058_disable_smps_locally_set_pull_down(regmap,
   PM8058_S1_CTRL, PM8058_S1_TEST2,
   REG_PM8058_VREG_EN_MSM, BIT(6));
  pm8058_disable_smps_locally_set_pull_down(regmap,
   PM8058_S3_CTRL, PM8058_S3_TEST2,
   REG_PM8058_VREG_EN_GRP_5_4, BIT(7) | BIT(4));

  pm8058_disable_ldo_locally_set_pull_down(regmap,
   PM8058_L21_CTRL, REG_PM8058_VREG_EN_GRP_5_4,
   BIT(1));
 }





 error = regmap_update_bits(regmap, PM8058_L22_CTRL, 0xbf, 0x93);
 if (error)
  return error;


 mask = SLEEP_CTRL_SMPL_EN_RESET;
 val = 0;
 if (reset)
  val = mask;
 return regmap_update_bits(regmap, PM8058_SLEEP_CTRL, mask, val);
}
