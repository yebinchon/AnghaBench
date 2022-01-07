
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct i2c_device_id {char* name; } ;
struct i2c_client {int irq; int dev; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int bmc150_magn_probe (int *,struct regmap*,int ,char const*) ;
 int bmc150_magn_regmap_config ;
 int dev_err (int *,char*) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;

__attribute__((used)) static int bmc150_magn_i2c_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct regmap *regmap;
 const char *name = ((void*)0);

 regmap = devm_regmap_init_i2c(client, &bmc150_magn_regmap_config);
 if (IS_ERR(regmap)) {
  dev_err(&client->dev, "Failed to initialize i2c regmap\n");
  return PTR_ERR(regmap);
 }

 if (id)
  name = id->name;

 return bmc150_magn_probe(&client->dev, regmap, client->irq, name);
}
