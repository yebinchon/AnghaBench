
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct i2c_device_id {char* name; } ;
struct i2c_client {int dev; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int bme680_core_probe (int *,struct regmap*,char const*) ;
 int bme680_regmap_config ;
 int dev_err (int *,char*,int) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;

__attribute__((used)) static int bme680_i2c_probe(struct i2c_client *client,
       const struct i2c_device_id *id)
{
 struct regmap *regmap;
 const char *name = ((void*)0);

 regmap = devm_regmap_init_i2c(client, &bme680_regmap_config);
 if (IS_ERR(regmap)) {
  dev_err(&client->dev, "Failed to register i2c regmap %d\n",
    (int)PTR_ERR(regmap));
  return PTR_ERR(regmap);
 }

 if (id)
  name = id->name;

 return bme680_core_probe(&client->dev, regmap, name);
}
