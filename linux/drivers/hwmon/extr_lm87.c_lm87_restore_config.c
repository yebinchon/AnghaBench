
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm87_data {int config; } ;
struct i2c_client {int dummy; } ;


 int LM87_REG_CONFIG ;
 struct lm87_data* i2c_get_clientdata (struct i2c_client*) ;
 int lm87_write_value (struct i2c_client*,int ,int ) ;

__attribute__((used)) static void lm87_restore_config(void *arg)
{
 struct i2c_client *client = arg;
 struct lm87_data *data = i2c_get_clientdata(client);

 lm87_write_value(client, LM87_REG_CONFIG, data->config);
}
