
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regmap {int dummy; } ;
struct device {int dummy; } ;
typedef enum bmi160_int_pin { ____Placeholder_bmi160_int_pin } bmi160_int_pin ;


 int BMI160_INT1_LATCH_MASK ;
 int BMI160_INT1_MAP_DRDY_EN ;
 int BMI160_INT1_OUT_CTRL_SHIFT ;
 int BMI160_INT2_LATCH_MASK ;
 int BMI160_INT2_MAP_DRDY_EN ;
 int BMI160_INT2_OUT_CTRL_SHIFT ;
 int BMI160_INT_OUT_CTRL_MASK ;
 int BMI160_OPEN_DRAIN ;
 int BMI160_OUTPUT_EN ;


 int BMI160_REG_INT_LATCH ;
 int BMI160_REG_INT_MAP ;
 int BMI160_REG_INT_OUT_CTRL ;
 int bmi160_write_conf_reg (struct regmap*,int ,int,int,unsigned long) ;
 int dev_err (struct device*,char*,char const*) ;
 struct device* regmap_get_device (struct regmap*) ;

__attribute__((used)) static int bmi160_config_pin(struct regmap *regmap, enum bmi160_int_pin pin,
        bool open_drain, u8 irq_mask,
        unsigned long write_usleep)
{
 int ret;
 struct device *dev = regmap_get_device(regmap);
 u8 int_out_ctrl_shift;
 u8 int_latch_mask;
 u8 int_map_mask;
 u8 int_out_ctrl_mask;
 u8 int_out_ctrl_bits;
 const char *pin_name;

 switch (pin) {
 case 129:
  int_out_ctrl_shift = BMI160_INT1_OUT_CTRL_SHIFT;
  int_latch_mask = BMI160_INT1_LATCH_MASK;
  int_map_mask = BMI160_INT1_MAP_DRDY_EN;
  break;
 case 128:
  int_out_ctrl_shift = BMI160_INT2_OUT_CTRL_SHIFT;
  int_latch_mask = BMI160_INT2_LATCH_MASK;
  int_map_mask = BMI160_INT2_MAP_DRDY_EN;
  break;
 }
 int_out_ctrl_mask = BMI160_INT_OUT_CTRL_MASK << int_out_ctrl_shift;







 int_out_ctrl_bits = BMI160_OUTPUT_EN;
 if (open_drain)

  int_out_ctrl_bits |= BMI160_OPEN_DRAIN;
 int_out_ctrl_bits |= irq_mask;
 int_out_ctrl_bits <<= int_out_ctrl_shift;

 ret = bmi160_write_conf_reg(regmap, BMI160_REG_INT_OUT_CTRL,
        int_out_ctrl_mask, int_out_ctrl_bits,
        write_usleep);
 if (ret)
  return ret;


 ret = bmi160_write_conf_reg(regmap, BMI160_REG_INT_LATCH,
        int_latch_mask, int_latch_mask,
        write_usleep);
 if (ret)
  return ret;


 ret = bmi160_write_conf_reg(regmap, BMI160_REG_INT_MAP,
        int_map_mask, int_map_mask,
        write_usleep);
 if (ret) {
  switch (pin) {
  case 129:
   pin_name = "INT1";
   break;
  case 128:
   pin_name = "INT2";
   break;
  }
  dev_err(dev, "Failed to configure %s IRQ pin", pin_name);
 }

 return ret;
}
