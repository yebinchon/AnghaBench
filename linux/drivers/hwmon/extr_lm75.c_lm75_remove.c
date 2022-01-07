
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm75_data {int orig_conf; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;


 int LM75_REG_CONF ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;

__attribute__((used)) static void lm75_remove(void *data)
{
 struct lm75_data *lm75 = data;
 struct i2c_client *client = lm75->client;

 i2c_smbus_write_byte_data(client, LM75_REG_CONF, lm75->orig_conf);
}
