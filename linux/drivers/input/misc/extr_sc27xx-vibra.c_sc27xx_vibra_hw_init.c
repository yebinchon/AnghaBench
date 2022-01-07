
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vibra_info {int base; int regmap; } ;


 int CUR_DRV_CAL_SEL ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int sc27xx_vibra_hw_init(struct vibra_info *info)
{
 return regmap_update_bits(info->regmap, info->base, CUR_DRV_CAL_SEL, 0);
}
