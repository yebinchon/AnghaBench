
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltc2990_data {int* mode; struct i2c_client* i2c; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int name; int dev; int adapter; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 int LTC2990_CONTROL ;
 int LTC2990_MODE0_MASK ;
 int LTC2990_MODE0_SHIFT ;
 int LTC2990_MODE1_MASK ;
 int LTC2990_MODE1_SHIFT ;
 int LTC2990_TRIGGER ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int dev_err (int *,char*) ;
 scalar_t__ dev_fwnode (int *) ;
 int device_property_read_u32_array (int *,char*,int*,int) ;
 struct device* devm_hwmon_device_register_with_groups (int *,int ,struct ltc2990_data*,int ) ;
 struct ltc2990_data* devm_kzalloc (int *,int,int ) ;
 int i2c_check_functionality (int ,int) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int ltc2990_groups ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ltc2990_i2c_probe(struct i2c_client *i2c,
        const struct i2c_device_id *id)
{
 int ret;
 struct device *hwmon_dev;
 struct ltc2990_data *data;

 if (!i2c_check_functionality(i2c->adapter, I2C_FUNC_SMBUS_BYTE_DATA |
         I2C_FUNC_SMBUS_WORD_DATA))
  return -ENODEV;

 data = devm_kzalloc(&i2c->dev, sizeof(struct ltc2990_data), GFP_KERNEL);
 if (unlikely(!data))
  return -ENOMEM;

 data->i2c = i2c;

 if (dev_fwnode(&i2c->dev)) {
  ret = device_property_read_u32_array(&i2c->dev,
           "lltc,meas-mode",
           data->mode, 2);
  if (ret < 0)
   return ret;

  if (data->mode[0] & ~LTC2990_MODE0_MASK ||
      data->mode[1] & ~LTC2990_MODE1_MASK)
   return -EINVAL;
 } else {
  ret = i2c_smbus_read_byte_data(i2c, LTC2990_CONTROL);
  if (ret < 0)
   return ret;

  data->mode[0] = ret >> LTC2990_MODE0_SHIFT & LTC2990_MODE0_MASK;
  data->mode[1] = ret >> LTC2990_MODE1_SHIFT & LTC2990_MODE1_MASK;
 }


 ret = i2c_smbus_write_byte_data(i2c, LTC2990_CONTROL,
     data->mode[0] << LTC2990_MODE0_SHIFT |
     data->mode[1] << LTC2990_MODE1_SHIFT);
 if (ret < 0) {
  dev_err(&i2c->dev, "Error: Failed to set control mode.\n");
  return ret;
 }

 ret = i2c_smbus_write_byte_data(i2c, LTC2990_TRIGGER, 1);
 if (ret < 0) {
  dev_err(&i2c->dev, "Error: Failed to start acquisition.\n");
  return ret;
 }

 hwmon_dev = devm_hwmon_device_register_with_groups(&i2c->dev,
          i2c->name,
          data,
          ltc2990_groups);

 return PTR_ERR_OR_ZERO(hwmon_dev);
}
