
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int irq; int dev; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int dev_err (int *,char*,int) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int st_uvis25_i2c_regmap_config ;
 int st_uvis25_probe (int *,int ,struct regmap*) ;

__attribute__((used)) static int st_uvis25_i2c_probe(struct i2c_client *client,
          const struct i2c_device_id *id)
{
 struct regmap *regmap;

 regmap = devm_regmap_init_i2c(client, &st_uvis25_i2c_regmap_config);
 if (IS_ERR(regmap)) {
  dev_err(&client->dev, "Failed to register i2c regmap %d\n",
   (int)PTR_ERR(regmap));
  return PTR_ERR(regmap);
 }

 return st_uvis25_probe(&client->dev, client->irq, regmap);
}
