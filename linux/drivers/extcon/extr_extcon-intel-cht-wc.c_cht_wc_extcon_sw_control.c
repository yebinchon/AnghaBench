
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cht_wc_extcon_data {int dev; int regmap; } ;


 int CHT_WC_CHGDISCTRL ;
 int CHT_WC_CHGDISCTRL_FN ;
 int CHT_WC_CHGRCTRL0 ;
 int CHT_WC_CHGRCTRL0_CCSM_OFF ;
 int CHT_WC_CHGRCTRL0_SWCONTROL ;
 int dev_err (int ,char*,int) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int cht_wc_extcon_sw_control(struct cht_wc_extcon_data *ext, bool enable)
{
 int ret, mask, val;

 val = enable ? 0 : CHT_WC_CHGDISCTRL_FN;
 ret = regmap_update_bits(ext->regmap, CHT_WC_CHGDISCTRL,
     CHT_WC_CHGDISCTRL_FN, val);
 if (ret)
  dev_err(ext->dev,
   "Error setting sw control for CHGDIS pin: %d\n",
   ret);

 mask = CHT_WC_CHGRCTRL0_SWCONTROL | CHT_WC_CHGRCTRL0_CCSM_OFF;
 val = enable ? mask : 0;
 ret = regmap_update_bits(ext->regmap, CHT_WC_CHGRCTRL0, mask, val);
 if (ret)
  dev_err(ext->dev, "Error setting sw control: %d\n", ret);

 return ret;
}
