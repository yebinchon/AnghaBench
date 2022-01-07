
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct bmg160_data {int regmap; } ;


 int BMG160_DATA_ENABLE_INT ;
 int BMG160_INT_MAP_1_BIT_NEW_DATA ;
 int BMG160_INT_MODE_LATCH_INT ;
 int BMG160_INT_MODE_LATCH_RESET ;
 int BMG160_INT_MODE_NON_LATCH_INT ;
 int BMG160_REG_INT_EN_0 ;
 int BMG160_REG_INT_MAP_1 ;
 int BMG160_REG_INT_RST_LATCH ;
 int dev_err (struct device*,char*) ;
 struct device* regmap_get_device (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int bmg160_setup_new_data_interrupt(struct bmg160_data *data,
        bool status)
{
 struct device *dev = regmap_get_device(data->regmap);
 int ret;


 ret = regmap_update_bits(data->regmap, BMG160_REG_INT_MAP_1,
     BMG160_INT_MAP_1_BIT_NEW_DATA,
     (status ? BMG160_INT_MAP_1_BIT_NEW_DATA : 0));
 if (ret < 0) {
  dev_err(dev, "Error updating bits in reg_int_map1\n");
  return ret;
 }

 if (status) {
  ret = regmap_write(data->regmap, BMG160_REG_INT_RST_LATCH,
       BMG160_INT_MODE_NON_LATCH_INT |
       BMG160_INT_MODE_LATCH_RESET);
  if (ret < 0) {
   dev_err(dev, "Error writing reg_rst_latch\n");
   return ret;
  }

  ret = regmap_write(data->regmap, BMG160_REG_INT_EN_0,
       BMG160_DATA_ENABLE_INT);

 } else {

  ret = regmap_write(data->regmap, BMG160_REG_INT_RST_LATCH,
       BMG160_INT_MODE_LATCH_INT |
       BMG160_INT_MODE_LATCH_RESET);
  if (ret < 0) {
   dev_err(dev, "Error writing reg_rst_latch\n");
   return ret;
  }

  ret = regmap_write(data->regmap, BMG160_REG_INT_EN_0, 0);
 }

 if (ret < 0) {
  dev_err(dev, "Error writing reg_int_en0\n");
  return ret;
 }

 return 0;
}
