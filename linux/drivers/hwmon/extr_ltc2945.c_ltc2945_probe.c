
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int LTC2945_FAULT ;
 int PTR_ERR (struct regmap*) ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int dev_err (struct device*,char*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct regmap*,int ) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int ltc2945_groups ;
 int ltc2945_regmap_config ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static int ltc2945_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct device *hwmon_dev;
 struct regmap *regmap;

 regmap = devm_regmap_init_i2c(client, &ltc2945_regmap_config);
 if (IS_ERR(regmap)) {
  dev_err(dev, "failed to allocate register map\n");
  return PTR_ERR(regmap);
 }


 regmap_write(regmap, LTC2945_FAULT, 0x00);

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          regmap,
          ltc2945_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
