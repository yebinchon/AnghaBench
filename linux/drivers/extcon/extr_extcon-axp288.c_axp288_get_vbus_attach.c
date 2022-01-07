
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axp288_extcon_info {int dev; int regmap; } ;


 int AXP288_PS_STAT_REG ;
 int PS_STAT_VBUS_VALID ;
 int dev_err (int ,char*) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static bool axp288_get_vbus_attach(struct axp288_extcon_info *info)
{
 int ret, pwr_stat;

 ret = regmap_read(info->regmap, AXP288_PS_STAT_REG, &pwr_stat);
 if (ret < 0) {
  dev_err(info->dev, "failed to read vbus status\n");
  return 0;
 }

 return !!(pwr_stat & PS_STAT_VBUS_VALID);
}
