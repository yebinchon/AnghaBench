
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm90_data {int config_orig; int convrate_orig; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;


 int LM90_REG_W_CONFIG1 ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int lm90_write_convrate (struct lm90_data*,int ) ;

__attribute__((used)) static void lm90_restore_conf(void *_data)
{
 struct lm90_data *data = _data;
 struct i2c_client *client = data->client;


 lm90_write_convrate(data, data->convrate_orig);
 i2c_smbus_write_byte_data(client, LM90_REG_W_CONFIG1,
      data->config_orig);
}
