
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axp288_extcon_info {int regmap; } ;


 int AXP288_BC_GLOBAL_REG ;
 int BC_GLOBAL_RUN ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void axp288_extcon_enable(struct axp288_extcon_info *info)
{
 regmap_update_bits(info->regmap, AXP288_BC_GLOBAL_REG,
      BC_GLOBAL_RUN, 0);

 regmap_update_bits(info->regmap, AXP288_BC_GLOBAL_REG,
     BC_GLOBAL_RUN, BC_GLOBAL_RUN);
}
