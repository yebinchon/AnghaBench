
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max30102_data {scalar_t__ chip_id; int regmap; TYPE_1__* client; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct TYPE_2__ {struct device dev; } ;


 int MAX30102_REG_IR_LED_CONFIG ;
 int MAX30102_REG_RED_LED_CONFIG ;
 int MAX30105_REG_GREEN_LED_CONFIG ;
 int dev_err (struct device*,char*,unsigned int) ;
 int dev_info (struct device*,char*) ;
 int max30102_get_current_idx (unsigned int,int*) ;
 scalar_t__ max30105 ;
 int of_property_read_u32 (struct device_node*,char*,unsigned int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int max30102_led_init(struct max30102_data *data)
{
 struct device *dev = &data->client->dev;
 struct device_node *np = dev->of_node;
 unsigned int val;
 int reg, ret;

 ret = of_property_read_u32(np, "maxim,red-led-current-microamp", &val);
 if (ret) {
  dev_info(dev, "no red-led-current-microamp set\n");


  val = 7000;
 }

 ret = max30102_get_current_idx(val, &reg);
 if (ret) {
  dev_err(dev, "invalid RED LED current setting %d\n", val);
  return ret;
 }

 ret = regmap_write(data->regmap, MAX30102_REG_RED_LED_CONFIG, reg);
 if (ret)
  return ret;

 if (data->chip_id == max30105) {
  ret = of_property_read_u32(np,
   "maxim,green-led-current-microamp", &val);
  if (ret) {
   dev_info(dev, "no green-led-current-microamp set\n");


   val = 7000;
  }

  ret = max30102_get_current_idx(val, &reg);
  if (ret) {
   dev_err(dev, "invalid green LED current setting %d\n",
    val);
   return ret;
  }

  ret = regmap_write(data->regmap, MAX30105_REG_GREEN_LED_CONFIG,
       reg);
  if (ret)
   return ret;
 }

 ret = of_property_read_u32(np, "maxim,ir-led-current-microamp", &val);
 if (ret) {
  dev_info(dev, "no ir-led-current-microamp set\n");


  val = 7000;
 }

 ret = max30102_get_current_idx(val, &reg);
 if (ret) {
  dev_err(dev, "invalid IR LED current setting %d\n", val);
  return ret;
 }

 return regmap_write(data->regmap, MAX30102_REG_IR_LED_CONFIG, reg);
}
