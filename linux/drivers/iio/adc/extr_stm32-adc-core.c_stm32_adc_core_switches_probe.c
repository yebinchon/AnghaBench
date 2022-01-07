
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_adc_priv {int vdd_uv; int * vdd; TYPE_1__* cfg; int * booster; int * syscfg; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct TYPE_2__ {int has_syscfg; } ;


 int ENODEV ;
 int EPROBE_DEFER ;
 int HAS_ANASWVDD ;
 int HAS_VBOOSTER ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dev_err (struct device*,char*,int) ;
 void* devm_regulator_get_optional (struct device*,char*) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int regulator_disable (int *) ;
 int regulator_enable (int *) ;
 int regulator_get_voltage (int *) ;
 int * syscon_regmap_lookup_by_phandle (struct device_node*,char*) ;

__attribute__((used)) static int stm32_adc_core_switches_probe(struct device *dev,
      struct stm32_adc_priv *priv)
{
 struct device_node *np = dev->of_node;
 int ret;


 priv->syscfg = syscon_regmap_lookup_by_phandle(np, "st,syscfg");
 if (IS_ERR(priv->syscfg)) {
  ret = PTR_ERR(priv->syscfg);
  if (ret != -ENODEV) {
   if (ret != -EPROBE_DEFER)
    dev_err(dev, "Can't probe syscfg: %d\n", ret);
   return ret;
  }
  priv->syscfg = ((void*)0);
 }


 if (priv->cfg->has_syscfg & HAS_VBOOSTER &&
     of_property_read_bool(np, "booster-supply")) {
  priv->booster = devm_regulator_get_optional(dev, "booster");
  if (IS_ERR(priv->booster)) {
   ret = PTR_ERR(priv->booster);
   if (ret != -ENODEV) {
    if (ret != -EPROBE_DEFER)
     dev_err(dev, "can't get booster %d\n",
      ret);
    return ret;
   }
   priv->booster = ((void*)0);
  }
 }


 if (priv->cfg->has_syscfg & HAS_ANASWVDD &&
     of_property_read_bool(np, "vdd-supply")) {
  priv->vdd = devm_regulator_get_optional(dev, "vdd");
  if (IS_ERR(priv->vdd)) {
   ret = PTR_ERR(priv->vdd);
   if (ret != -ENODEV) {
    if (ret != -EPROBE_DEFER)
     dev_err(dev, "can't get vdd %d\n", ret);
    return ret;
   }
   priv->vdd = ((void*)0);
  }
 }

 if (priv->vdd) {
  ret = regulator_enable(priv->vdd);
  if (ret < 0) {
   dev_err(dev, "vdd enable failed %d\n", ret);
   return ret;
  }

  ret = regulator_get_voltage(priv->vdd);
  if (ret < 0) {
   dev_err(dev, "vdd get voltage failed %d\n", ret);
   regulator_disable(priv->vdd);
   return ret;
  }
  priv->vdd_uv = ret;

  regulator_disable(priv->vdd);
 }

 return 0;
}
