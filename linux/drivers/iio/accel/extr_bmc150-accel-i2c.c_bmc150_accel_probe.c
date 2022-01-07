
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct i2c_device_id {char* name; } ;
struct i2c_client {int irq; int dev; int adapter; } ;


 int I2C_FUNC_I2C ;
 int I2C_FUNC_SMBUS_READ_I2C_BLOCK ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int bmc150_accel_core_probe (int *,struct regmap*,int ,char const*,int) ;
 int bmc150_regmap_conf ;
 int dev_err (int *,char*) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 scalar_t__ i2c_check_functionality (int ,int ) ;

__attribute__((used)) static int bmc150_accel_probe(struct i2c_client *client,
         const struct i2c_device_id *id)
{
 struct regmap *regmap;
 const char *name = ((void*)0);
 bool block_supported =
  i2c_check_functionality(client->adapter, I2C_FUNC_I2C) ||
  i2c_check_functionality(client->adapter,
     I2C_FUNC_SMBUS_READ_I2C_BLOCK);

 regmap = devm_regmap_init_i2c(client, &bmc150_regmap_conf);
 if (IS_ERR(regmap)) {
  dev_err(&client->dev, "Failed to initialize i2c regmap\n");
  return PTR_ERR(regmap);
 }

 if (id)
  name = id->name;

 return bmc150_accel_core_probe(&client->dev, regmap, client->irq, name,
           block_supported);
}
