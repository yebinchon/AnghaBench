
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct i2c_client {int irq; int dev; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int rm3100_common_probe (int *,struct regmap*,int ) ;
 int rm3100_regmap_config ;

__attribute__((used)) static int rm3100_probe(struct i2c_client *client)
{
 struct regmap *regmap;

 regmap = devm_regmap_init_i2c(client, &rm3100_regmap_config);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 return rm3100_common_probe(&client->dev, regmap, client->irq);
}
