
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vibra_info {int enabled; int base; int regmap; } ;


 int LDO_VIBR_PD ;
 int SLP_LDOVIBR_PD_EN ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void sc27xx_vibra_set(struct vibra_info *info, bool on)
{
 if (on) {
  regmap_update_bits(info->regmap, info->base, LDO_VIBR_PD, 0);
  regmap_update_bits(info->regmap, info->base,
       SLP_LDOVIBR_PD_EN, 0);
  info->enabled = 1;
 } else {
  regmap_update_bits(info->regmap, info->base, LDO_VIBR_PD,
       LDO_VIBR_PD);
  regmap_update_bits(info->regmap, info->base,
       SLP_LDOVIBR_PD_EN, SLP_LDOVIBR_PD_EN);
  info->enabled = 0;
 }
}
