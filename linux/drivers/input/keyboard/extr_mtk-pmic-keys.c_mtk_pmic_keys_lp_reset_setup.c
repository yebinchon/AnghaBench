
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mtk_pmic_keys {int regmap; TYPE_1__* dev; } ;
struct TYPE_2__ {int of_node; } ;





 int MTK_PMIC_HOMEKEY_RST ;
 int MTK_PMIC_PWRKEY_RST ;
 int MTK_PMIC_RST_DU_MASK ;
 int MTK_PMIC_RST_DU_SHIFT ;
 int of_property_read_u32 (int ,char*,int*) ;
 int regmap_update_bits (int ,int,int,int) ;

__attribute__((used)) static void mtk_pmic_keys_lp_reset_setup(struct mtk_pmic_keys *keys,
  u32 pmic_rst_reg)
{
 int ret;
 u32 long_press_mode, long_press_debounce;

 ret = of_property_read_u32(keys->dev->of_node,
  "power-off-time-sec", &long_press_debounce);
 if (ret)
  long_press_debounce = 0;

 regmap_update_bits(keys->regmap, pmic_rst_reg,
      MTK_PMIC_RST_DU_MASK << MTK_PMIC_RST_DU_SHIFT,
      long_press_debounce << MTK_PMIC_RST_DU_SHIFT);

 ret = of_property_read_u32(keys->dev->of_node,
  "mediatek,long-press-mode", &long_press_mode);
 if (ret)
  long_press_mode = 130;

 switch (long_press_mode) {
 case 129:
  regmap_update_bits(keys->regmap, pmic_rst_reg,
       MTK_PMIC_PWRKEY_RST,
       MTK_PMIC_PWRKEY_RST);
  regmap_update_bits(keys->regmap, pmic_rst_reg,
       MTK_PMIC_HOMEKEY_RST,
       0);
  break;
 case 128:
  regmap_update_bits(keys->regmap, pmic_rst_reg,
       MTK_PMIC_PWRKEY_RST,
       MTK_PMIC_PWRKEY_RST);
  regmap_update_bits(keys->regmap, pmic_rst_reg,
       MTK_PMIC_HOMEKEY_RST,
       MTK_PMIC_HOMEKEY_RST);
  break;
 case 130:
  regmap_update_bits(keys->regmap, pmic_rst_reg,
       MTK_PMIC_PWRKEY_RST,
       0);
  regmap_update_bits(keys->regmap, pmic_rst_reg,
       MTK_PMIC_HOMEKEY_RST,
       0);
  break;
 default:
  break;
 }
}
