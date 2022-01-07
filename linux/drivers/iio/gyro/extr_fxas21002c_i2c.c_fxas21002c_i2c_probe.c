
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct i2c_client {int name; int irq; int dev; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int dev_err (int *,char*,int) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int fxas21002c_core_probe (int *,struct regmap*,int ,int ) ;
 int fxas21002c_regmap_i2c_conf ;

__attribute__((used)) static int fxas21002c_i2c_probe(struct i2c_client *i2c)
{
 struct regmap *regmap;

 regmap = devm_regmap_init_i2c(i2c, &fxas21002c_regmap_i2c_conf);
 if (IS_ERR(regmap)) {
  dev_err(&i2c->dev, "Failed to register i2c regmap: %ld\n",
   PTR_ERR(regmap));
  return PTR_ERR(regmap);
 }

 return fxas21002c_core_probe(&i2c->dev, regmap, i2c->irq, i2c->name);
}
