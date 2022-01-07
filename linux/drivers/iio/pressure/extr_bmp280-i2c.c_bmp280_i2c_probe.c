
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_config {int dummy; } ;
struct regmap {int dummy; } ;
struct i2c_device_id {int name; int driver_data; } ;
struct i2c_client {int irq; int dev; } ;





 int EINVAL ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 struct regmap_config bmp180_regmap_config ;
 int bmp280_common_probe (int *,struct regmap*,int ,int ,int ) ;
 struct regmap_config bmp280_regmap_config ;
 int dev_err (int *,char*) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,struct regmap_config const*) ;

__attribute__((used)) static int bmp280_i2c_probe(struct i2c_client *client,
       const struct i2c_device_id *id)
{
 struct regmap *regmap;
 const struct regmap_config *regmap_config;

 switch (id->driver_data) {
 case 129:
  regmap_config = &bmp180_regmap_config;
  break;
 case 128:
 case 130:
  regmap_config = &bmp280_regmap_config;
  break;
 default:
  return -EINVAL;
 }

 regmap = devm_regmap_init_i2c(client, regmap_config);
 if (IS_ERR(regmap)) {
  dev_err(&client->dev, "failed to allocate register map\n");
  return PTR_ERR(regmap);
 }

 return bmp280_common_probe(&client->dev,
       regmap,
       id->driver_data,
       id->name,
       client->irq);
}
