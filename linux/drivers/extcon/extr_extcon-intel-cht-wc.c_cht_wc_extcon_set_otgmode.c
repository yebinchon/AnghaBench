
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cht_wc_extcon_data {int dev; int regmap; } ;


 int CHT_WC_CHGRCTRL1 ;
 unsigned int CHT_WC_CHGRCTRL1_OTGMODE ;
 int dev_err (int ,char*,int) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;

__attribute__((used)) static void cht_wc_extcon_set_otgmode(struct cht_wc_extcon_data *ext,
          bool enable)
{
 unsigned int val = enable ? CHT_WC_CHGRCTRL1_OTGMODE : 0;
 int ret;

 ret = regmap_update_bits(ext->regmap, CHT_WC_CHGRCTRL1,
     CHT_WC_CHGRCTRL1_OTGMODE, val);
 if (ret)
  dev_err(ext->dev, "Error updating CHGRCTRL1 reg: %d\n", ret);
}
