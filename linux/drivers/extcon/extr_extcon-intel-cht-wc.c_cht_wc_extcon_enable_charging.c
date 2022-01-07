
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cht_wc_extcon_data {int dev; int regmap; } ;


 int CHT_WC_CHGDISCTRL ;
 unsigned int CHT_WC_CHGDISCTRL_OUT ;
 int dev_err (int ,char*,int) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;

__attribute__((used)) static void cht_wc_extcon_enable_charging(struct cht_wc_extcon_data *ext,
       bool enable)
{
 unsigned int val = enable ? 0 : CHT_WC_CHGDISCTRL_OUT;
 int ret;

 ret = regmap_update_bits(ext->regmap, CHT_WC_CHGDISCTRL,
     CHT_WC_CHGDISCTRL_OUT, val);
 if (ret)
  dev_err(ext->dev, "Error updating CHGDISCTRL reg: %d\n", ret);
}
