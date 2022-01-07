
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max30100_data {int regmap; } ;


 int MAX30100_REG_INT_ENABLE ;
 int MAX30100_REG_INT_ENABLE_FIFO_EN ;
 int MAX30100_REG_INT_ENABLE_MASK ;
 int MAX30100_REG_INT_ENABLE_MASK_SHIFT ;
 int MAX30100_REG_MODE_CONFIG ;
 int MAX30100_REG_MODE_CONFIG_MODE_HR_EN ;
 int MAX30100_REG_MODE_CONFIG_MODE_MASK ;
 int MAX30100_REG_MODE_CONFIG_MODE_SPO2_EN ;
 int MAX30100_REG_SPO2_CONFIG ;
 int MAX30100_REG_SPO2_CONFIG_100HZ ;
 int MAX30100_REG_SPO2_CONFIG_HI_RES_EN ;
 int max30100_led_init (struct max30100_data*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int max30100_chip_init(struct max30100_data *data)
{
 int ret;


 ret = max30100_led_init(data);
 if (ret)
  return ret;


 ret = regmap_write(data->regmap, MAX30100_REG_SPO2_CONFIG,
     MAX30100_REG_SPO2_CONFIG_HI_RES_EN |
     MAX30100_REG_SPO2_CONFIG_100HZ);
 if (ret)
  return ret;


 ret = regmap_update_bits(data->regmap, MAX30100_REG_MODE_CONFIG,
     MAX30100_REG_MODE_CONFIG_MODE_MASK,
     MAX30100_REG_MODE_CONFIG_MODE_HR_EN |
     MAX30100_REG_MODE_CONFIG_MODE_SPO2_EN);
 if (ret)
  return ret;


 return regmap_update_bits(data->regmap, MAX30100_REG_INT_ENABLE,
     MAX30100_REG_INT_ENABLE_MASK,
     MAX30100_REG_INT_ENABLE_FIFO_EN
     << MAX30100_REG_INT_ENABLE_MASK_SHIFT);
}
