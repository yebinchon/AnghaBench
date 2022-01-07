
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max30102_data {int regmap; } ;


 int MAX30102_REG_FIFO_CONFIG ;
 int MAX30102_REG_FIFO_CONFIG_AFULL ;
 int MAX30102_REG_FIFO_CONFIG_AVG_4SAMPLES ;
 int MAX30102_REG_FIFO_CONFIG_AVG_SHIFT ;
 int MAX30102_REG_INT_ENABLE ;
 int MAX30102_REG_INT_ENABLE_FIFO_EN ;
 int MAX30102_REG_INT_ENABLE_MASK ;
 int MAX30102_REG_SPO2_CONFIG ;
 int MAX30102_REG_SPO2_CONFIG_ADC_4096_STEPS ;
 int MAX30102_REG_SPO2_CONFIG_ADC_MASK_SHIFT ;
 int MAX30102_REG_SPO2_CONFIG_PULSE_411_US ;
 int MAX30102_REG_SPO2_CONFIG_SR_400HZ ;
 int MAX30102_REG_SPO2_CONFIG_SR_MASK_SHIFT ;
 int max30102_led_init (struct max30102_data*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int max30102_chip_init(struct max30102_data *data)
{
 int ret;


 ret = max30102_led_init(data);
 if (ret)
  return ret;


 ret = regmap_write(data->regmap, MAX30102_REG_SPO2_CONFIG,
    (MAX30102_REG_SPO2_CONFIG_ADC_4096_STEPS
     << MAX30102_REG_SPO2_CONFIG_ADC_MASK_SHIFT) |
    (MAX30102_REG_SPO2_CONFIG_SR_400HZ
     << MAX30102_REG_SPO2_CONFIG_SR_MASK_SHIFT) |
     MAX30102_REG_SPO2_CONFIG_PULSE_411_US);
 if (ret)
  return ret;


 ret = regmap_write(data->regmap, MAX30102_REG_FIFO_CONFIG,
    (MAX30102_REG_FIFO_CONFIG_AVG_4SAMPLES
     << MAX30102_REG_FIFO_CONFIG_AVG_SHIFT) |
     MAX30102_REG_FIFO_CONFIG_AFULL);
 if (ret)
  return ret;


 return regmap_update_bits(data->regmap, MAX30102_REG_INT_ENABLE,
     MAX30102_REG_INT_ENABLE_MASK,
     MAX30102_REG_INT_ENABLE_FIFO_EN);
}
