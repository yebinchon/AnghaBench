
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_adc_priv {int vdda_uv; int vdd_uv; scalar_t__ booster; scalar_t__ vdd; scalar_t__ syscfg; } ;
struct device {int dummy; } ;


 int STM32MP1_SYSCFG_ANASWVDD_MASK ;
 int STM32MP1_SYSCFG_PMCSETR ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_err (struct device*,char*,int) ;
 int regmap_write (scalar_t__,int ,int ) ;
 int regulator_disable (scalar_t__) ;
 int regulator_enable (scalar_t__) ;

__attribute__((used)) static int stm32_adc_core_switches_supply_en(struct stm32_adc_priv *priv,
          struct device *dev)
{
 int ret;
 if (priv->vdda_uv < 2700000) {
  if (priv->syscfg && priv->vdd_uv > 2700000) {
   ret = regulator_enable(priv->vdd);
   if (ret < 0) {
    dev_err(dev, "vdd enable failed %d\n", ret);
    return ret;
   }

   ret = regmap_write(priv->syscfg,
        STM32MP1_SYSCFG_PMCSETR,
        STM32MP1_SYSCFG_ANASWVDD_MASK);
   if (ret < 0) {
    regulator_disable(priv->vdd);
    dev_err(dev, "vdd select failed, %d\n", ret);
    return ret;
   }
   dev_dbg(dev, "analog switches supplied by vdd\n");

   return 0;
  }

  if (priv->booster) {




   ret = regulator_enable(priv->booster);
   if (ret < 0) {
    dev_err(dev, "booster enable failed %d\n", ret);
    return ret;
   }
   dev_dbg(dev, "analog switches supplied by booster\n");

   return 0;
  }
 }


 dev_dbg(dev, "analog switches supplied by vdda (%d uV)\n",
  priv->vdda_uv);

 return 0;
}
