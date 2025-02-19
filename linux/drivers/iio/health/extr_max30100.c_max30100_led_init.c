
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max30100_data {int regmap; TYPE_1__* client; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct TYPE_2__ {struct device dev; } ;


 int MAX30100_REG_LED_CONFIG ;
 int MAX30100_REG_LED_CONFIG_24MA ;
 int MAX30100_REG_LED_CONFIG_50MA ;
 int MAX30100_REG_LED_CONFIG_LED_MASK ;
 int MAX30100_REG_LED_CONFIG_RED_LED_SHIFT ;
 int dev_err (struct device*,char*,unsigned int) ;
 int dev_warn (struct device*,char*) ;
 int max30100_get_current_idx (unsigned int,int*) ;
 int of_property_read_u32_array (struct device_node*,char*,unsigned int*,int) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int max30100_led_init(struct max30100_data *data)
{
 struct device *dev = &data->client->dev;
 struct device_node *np = dev->of_node;
 unsigned int val[2];
 int reg, ret;

 ret = of_property_read_u32_array(np, "maxim,led-current-microamp",
     (unsigned int *) &val, 2);
 if (ret) {

  reg = (MAX30100_REG_LED_CONFIG_24MA <<
   MAX30100_REG_LED_CONFIG_RED_LED_SHIFT) |
   MAX30100_REG_LED_CONFIG_50MA;
  dev_warn(dev, "no led-current-microamp set");

  return regmap_write(data->regmap, MAX30100_REG_LED_CONFIG, reg);
 }


 ret = max30100_get_current_idx(val[0], &reg);
 if (ret) {
  dev_err(dev, "invalid RED current setting %d", val[0]);
  return ret;
 }

 ret = regmap_update_bits(data->regmap, MAX30100_REG_LED_CONFIG,
  MAX30100_REG_LED_CONFIG_LED_MASK <<
  MAX30100_REG_LED_CONFIG_RED_LED_SHIFT,
  reg << MAX30100_REG_LED_CONFIG_RED_LED_SHIFT);
 if (ret)
  return ret;


 ret = max30100_get_current_idx(val[1], &reg);
 if (ret) {
  dev_err(dev, "invalid IR current setting %d", val[1]);
  return ret;
 }

 return regmap_update_bits(data->regmap, MAX30100_REG_LED_CONFIG,
  MAX30100_REG_LED_CONFIG_LED_MASK, reg);
}
