
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lmp91000_data {int regmap; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int ARRAY_SIZE (unsigned int*) ;
 int EINVAL ;
 int LMP91000_REG_LOCK ;
 int LMP91000_REG_REFCN ;
 int LMP91000_REG_REFCN_50_ZERO ;
 int LMP91000_REG_REFCN_EXT_REF ;
 int LMP91000_REG_TIACN ;
 int LMP91000_REG_TIACN_GAIN_SHIFT ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,unsigned int) ;
 unsigned int* lmp91000_rload ;
 unsigned int* lmp91000_tia_gain ;
 int of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,unsigned int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int lmp91000_read_config(struct lmp91000_data *data)
{
 struct device *dev = data->dev;
 struct device_node *np = dev->of_node;
 unsigned int reg, val;
 int i, ret;

 ret = of_property_read_u32(np, "ti,tia-gain-ohm", &val);
 if (ret) {
  if (!of_property_read_bool(np, "ti,external-tia-resistor")) {
   dev_err(dev, "no ti,tia-gain-ohm defined and external resistor not specified\n");
   return ret;
  }
  val = 0;
 }

 ret = -EINVAL;
 for (i = 0; i < ARRAY_SIZE(lmp91000_tia_gain); i++) {
  if (lmp91000_tia_gain[i] == val) {
   reg = i << LMP91000_REG_TIACN_GAIN_SHIFT;
   ret = 0;
   break;
  }
 }

 if (ret) {
  dev_err(dev, "invalid ti,tia-gain-ohm %d\n", val);
  return ret;
 }

 ret = of_property_read_u32(np, "ti,rload-ohm", &val);
 if (ret) {
  val = 100;
  dev_info(dev, "no ti,rload-ohm defined, default to %d\n", val);
 }

 ret = -EINVAL;
 for (i = 0; i < ARRAY_SIZE(lmp91000_rload); i++) {
  if (lmp91000_rload[i] == val) {
   reg |= i;
   ret = 0;
   break;
  }
 }

 if (ret) {
  dev_err(dev, "invalid ti,rload-ohm %d\n", val);
  return ret;
 }

 regmap_write(data->regmap, LMP91000_REG_LOCK, 0);
 regmap_write(data->regmap, LMP91000_REG_TIACN, reg);
 regmap_write(data->regmap, LMP91000_REG_REFCN,
       LMP91000_REG_REFCN_EXT_REF | LMP91000_REG_REFCN_50_ZERO);
 regmap_write(data->regmap, LMP91000_REG_LOCK, 1);

 return 0;
}
