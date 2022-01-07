
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct i2c_client {int irq; int dev; } ;


 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int tsc2004_cmd ;
 int tsc2004_input_id ;
 int tsc200x_probe (int *,int ,int *,int ,int ) ;
 int tsc200x_regmap_config ;

__attribute__((used)) static int tsc2004_probe(struct i2c_client *i2c,
    const struct i2c_device_id *id)

{
 return tsc200x_probe(&i2c->dev, i2c->irq, &tsc2004_input_id,
        devm_regmap_init_i2c(i2c, &tsc200x_regmap_config),
        tsc2004_cmd);
}
