
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct bmi160_data {int regmap; } ;


 int BMI160_ACCEL ;
 unsigned int BMI160_CHIP_ID_VAL ;
 int BMI160_CMD_SOFTRESET ;
 int BMI160_GYRO ;
 int BMI160_REG_CHIP_ID ;
 int BMI160_REG_CMD ;
 int BMI160_REG_DUMMY ;
 scalar_t__ BMI160_SOFTRESET_USLEEP ;
 int ENODEV ;
 int bmi160_set_mode (struct bmi160_data*,int ,int) ;
 int dev_err (struct device*,char*,...) ;
 struct device* regmap_get_device (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,int ) ;
 int usleep_range (scalar_t__,scalar_t__) ;

__attribute__((used)) static int bmi160_chip_init(struct bmi160_data *data, bool use_spi)
{
 int ret;
 unsigned int val;
 struct device *dev = regmap_get_device(data->regmap);

 ret = regmap_write(data->regmap, BMI160_REG_CMD, BMI160_CMD_SOFTRESET);
 if (ret)
  return ret;

 usleep_range(BMI160_SOFTRESET_USLEEP, BMI160_SOFTRESET_USLEEP + 1);





 if (use_spi) {
  ret = regmap_read(data->regmap, BMI160_REG_DUMMY, &val);
  if (ret)
   return ret;
 }

 ret = regmap_read(data->regmap, BMI160_REG_CHIP_ID, &val);
 if (ret) {
  dev_err(dev, "Error reading chip id\n");
  return ret;
 }
 if (val != BMI160_CHIP_ID_VAL) {
  dev_err(dev, "Wrong chip id, got %x expected %x\n",
   val, BMI160_CHIP_ID_VAL);
  return -ENODEV;
 }

 ret = bmi160_set_mode(data, BMI160_ACCEL, 1);
 if (ret)
  return ret;

 ret = bmi160_set_mode(data, BMI160_GYRO, 1);
 if (ret)
  return ret;

 return 0;
}
