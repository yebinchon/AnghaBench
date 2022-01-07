
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77843_muic_info {struct max77693_dev* max77843; } ;
struct max77693_dev {int regmap_chg; } ;


 unsigned int MAX77843_CHG_BOOST_MASK ;
 unsigned int MAX77843_CHG_BUCK_MASK ;
 unsigned int MAX77843_CHG_ENABLE ;
 int MAX77843_CHG_MODE_MASK ;
 unsigned int MAX77843_CHG_OTG_MASK ;
 int MAX77843_CHG_REG_CHG_CNFG_00 ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;

__attribute__((used)) static void max77843_charger_set_otg_vbus(struct max77843_muic_info *info,
   bool on)
{
 struct max77693_dev *max77843 = info->max77843;
 unsigned int cnfg00;

 if (on)
  cnfg00 = MAX77843_CHG_OTG_MASK | MAX77843_CHG_BOOST_MASK;
 else
  cnfg00 = MAX77843_CHG_ENABLE | MAX77843_CHG_BUCK_MASK;

 regmap_update_bits(max77843->regmap_chg, MAX77843_CHG_REG_CHG_CNFG_00,
      MAX77843_CHG_MODE_MASK, cnfg00);
}
