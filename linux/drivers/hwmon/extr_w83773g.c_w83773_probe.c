
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int W83773_CONVERSION_RATE_REG_WRITE ;
 int dev_err (struct device*,char*) ;
 struct device* devm_hwmon_device_register_with_info (struct device*,int ,struct regmap*,int *,int *) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct regmap*) ;
 int regmap_write (struct regmap*,int ,int) ;
 int w83773_chip_info ;
 int w83773_regmap_config ;

__attribute__((used)) static int w83773_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct device *hwmon_dev;
 struct regmap *regmap;
 int ret;

 regmap = devm_regmap_init_i2c(client, &w83773_regmap_config);
 if (IS_ERR(regmap)) {
  dev_err(dev, "failed to allocate register map\n");
  return PTR_ERR(regmap);
 }


 ret = regmap_write(regmap, W83773_CONVERSION_RATE_REG_WRITE, 0x05);
 if (ret < 0) {
  dev_err(&client->dev, "error writing config rate register\n");
  return ret;
 }

 i2c_set_clientdata(client, regmap);

 hwmon_dev = devm_hwmon_device_register_with_info(dev,
        client->name,
        regmap,
        &w83773_chip_info,
        ((void*)0));
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
