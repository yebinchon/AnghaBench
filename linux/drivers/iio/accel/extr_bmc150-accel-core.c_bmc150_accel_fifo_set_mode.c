
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;
struct bmc150_accel_data {int watermark; int regmap; int fifo_mode; } ;


 int BMC150_ACCEL_REG_FIFO_CONFIG0 ;
 int BMC150_ACCEL_REG_FIFO_CONFIG1 ;
 int dev_err (struct device*,char*) ;
 struct device* regmap_get_device (int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int bmc150_accel_fifo_set_mode(struct bmc150_accel_data *data)
{
 struct device *dev = regmap_get_device(data->regmap);
 u8 reg = BMC150_ACCEL_REG_FIFO_CONFIG1;
 int ret;

 ret = regmap_write(data->regmap, reg, data->fifo_mode);
 if (ret < 0) {
  dev_err(dev, "Error writing reg_fifo_config1\n");
  return ret;
 }

 if (!data->fifo_mode)
  return 0;

 ret = regmap_write(data->regmap, BMC150_ACCEL_REG_FIFO_CONFIG0,
      data->watermark);
 if (ret < 0)
  dev_err(dev, "Error writing reg_fifo_config0\n");

 return ret;
}
