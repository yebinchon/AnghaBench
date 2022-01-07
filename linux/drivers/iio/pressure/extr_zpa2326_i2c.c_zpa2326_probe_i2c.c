
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct i2c_device_id {int name; } ;
struct i2c_client {int irq; int dev; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int dev_err (int *,char*) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int zpa2326_i2c_hwid (struct i2c_client*) ;
 int zpa2326_probe (int *,int ,int ,int ,struct regmap*) ;
 int zpa2326_regmap_i2c_config ;

__attribute__((used)) static int zpa2326_probe_i2c(struct i2c_client *client,
        const struct i2c_device_id *i2c_id)
{
 struct regmap *regmap;

 regmap = devm_regmap_init_i2c(client, &zpa2326_regmap_i2c_config);
 if (IS_ERR(regmap)) {
  dev_err(&client->dev, "failed to init registers map");
  return PTR_ERR(regmap);
 }

 return zpa2326_probe(&client->dev, i2c_id->name, client->irq,
        zpa2326_i2c_hwid(client), regmap);
}
