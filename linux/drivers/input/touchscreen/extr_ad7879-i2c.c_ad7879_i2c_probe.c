
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int irq; int dev; int adapter; } ;


 int AD7879_DEVID ;
 int BUS_I2C ;
 int EIO ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int ad7879_i2c_regmap_config ;
 int ad7879_probe (int *,struct regmap*,int ,int ,int ) ;
 int dev_err (int *,char*) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_check_functionality (int ,int ) ;

__attribute__((used)) static int ad7879_i2c_probe(struct i2c_client *client,
          const struct i2c_device_id *id)
{
 struct regmap *regmap;

 if (!i2c_check_functionality(client->adapter,
         I2C_FUNC_SMBUS_WORD_DATA)) {
  dev_err(&client->dev, "SMBUS Word Data not Supported\n");
  return -EIO;
 }

 regmap = devm_regmap_init_i2c(client, &ad7879_i2c_regmap_config);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 return ad7879_probe(&client->dev, regmap, client->irq,
       BUS_I2C, AD7879_DEVID);
}
