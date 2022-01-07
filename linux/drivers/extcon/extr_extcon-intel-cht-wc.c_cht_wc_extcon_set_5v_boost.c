
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cht_wc_extcon_data {int dev; int regmap; } ;


 int CHT_WC_VBUS_GPIO_CTLO ;
 int CHT_WC_VBUS_GPIO_CTLO_DIR_OUT ;
 int CHT_WC_VBUS_GPIO_CTLO_DRV_OD ;
 int CHT_WC_VBUS_GPIO_CTLO_OUTPUT ;
 int dev_err (int ,char*,int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void cht_wc_extcon_set_5v_boost(struct cht_wc_extcon_data *ext,
           bool enable)
{
 int ret, val;





 val = CHT_WC_VBUS_GPIO_CTLO_DRV_OD | CHT_WC_VBUS_GPIO_CTLO_DIR_OUT;
 if (enable)
  val |= CHT_WC_VBUS_GPIO_CTLO_OUTPUT;

 ret = regmap_write(ext->regmap, CHT_WC_VBUS_GPIO_CTLO, val);
 if (ret)
  dev_err(ext->dev, "Error writing Vbus GPIO CTLO: %d\n", ret);
}
