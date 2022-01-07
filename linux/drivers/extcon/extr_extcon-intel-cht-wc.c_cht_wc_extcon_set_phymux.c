
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cht_wc_extcon_data {int dev; int regmap; } ;


 int CHT_WC_PHYCTRL ;
 int dev_err (int ,char*,int) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void cht_wc_extcon_set_phymux(struct cht_wc_extcon_data *ext, u8 state)
{
 int ret;

 ret = regmap_write(ext->regmap, CHT_WC_PHYCTRL, state);
 if (ret)
  dev_err(ext->dev, "Error writing phyctrl: %d\n", ret);
}
