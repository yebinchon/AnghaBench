
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm90_data {int convrate_orig; int config_orig; int config; scalar_t__ kind; int flags; } ;
struct i2c_client {int dev; } ;


 int LM90_FLAG_ADT7461_EXT ;
 int LM90_REG_R_CONFIG1 ;
 int LM90_REG_R_CONVRATE ;
 scalar_t__ adt7461 ;
 int devm_add_action_or_reset (int *,int ,struct lm90_data*) ;
 int lm90_read_reg (struct i2c_client*,int ) ;
 int lm90_restore_conf ;
 int lm90_set_convrate (struct i2c_client*,struct lm90_data*,int) ;
 int lm90_update_confreg (struct lm90_data*,int) ;
 scalar_t__ max6680 ;
 scalar_t__ max6696 ;
 scalar_t__ tmp451 ;

__attribute__((used)) static int lm90_init_client(struct i2c_client *client, struct lm90_data *data)
{
 int config, convrate;

 convrate = lm90_read_reg(client, LM90_REG_R_CONVRATE);
 if (convrate < 0)
  return convrate;
 data->convrate_orig = convrate;




 config = lm90_read_reg(client, LM90_REG_R_CONFIG1);
 if (config < 0)
  return config;
 data->config_orig = config;
 data->config = config;

 lm90_set_convrate(client, data, 500);


 if (data->kind == adt7461 || data->kind == tmp451) {
  if (config & 0x04)
   data->flags |= LM90_FLAG_ADT7461_EXT;
 }






 if (data->kind == max6680)
  config |= 0x18;




 if (data->kind == max6696)
  config &= ~0x08;

 config &= 0xBF;
 lm90_update_confreg(data, config);

 return devm_add_action_or_reset(&client->dev, lm90_restore_conf, data);
}
