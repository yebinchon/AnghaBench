
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct i2c_device_id {int name; } ;
struct i2c_client {int irq; int dev; } ;


 int ADXL372_REVID ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int adxl372_probe (int *,struct regmap*,int ,int ) ;
 int adxl372_regmap_config ;
 int dev_warn (int *,char*) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

__attribute__((used)) static int adxl372_i2c_probe(struct i2c_client *client,
        const struct i2c_device_id *id)
{
 struct regmap *regmap;
 unsigned int regval;
 int ret;

 regmap = devm_regmap_init_i2c(client, &adxl372_regmap_config);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 ret = regmap_read(regmap, ADXL372_REVID, &regval);
 if (ret < 0)
  return ret;


 if (regval < 3)
  dev_warn(&client->dev,
  "I2C might not work properly with other devices on the bus");

 return adxl372_probe(&client->dev, regmap, client->irq, id->name);
}
