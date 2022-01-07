
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct i2c_device_id {char* name; } ;
struct i2c_client {int dev; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int mma7455_core_probe (int *,struct regmap*,char const*) ;
 int mma7455_core_regmap ;

__attribute__((used)) static int mma7455_i2c_probe(struct i2c_client *i2c,
        const struct i2c_device_id *id)
{
 struct regmap *regmap;
 const char *name = ((void*)0);

 regmap = devm_regmap_init_i2c(i2c, &mma7455_core_regmap);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 if (id)
  name = id->name;

 return mma7455_core_probe(&i2c->dev, regmap, name);
}
