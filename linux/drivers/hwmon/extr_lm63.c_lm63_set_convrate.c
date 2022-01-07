
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm63_data {int max_convrate_hz; int update_interval; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;


 int LM63_MAX_CONVRATE ;
 int LM63_REG_CONVRATE ;
 int UPDATE_INTERVAL (int,int) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

__attribute__((used)) static void lm63_set_convrate(struct lm63_data *data, unsigned int interval)
{
 struct i2c_client *client = data->client;
 unsigned int update_interval;
 int i;


 interval <<= 6;


 update_interval = (1 << (LM63_MAX_CONVRATE + 6)) * 1000
   / data->max_convrate_hz;
 for (i = 0; i < LM63_MAX_CONVRATE; i++, update_interval >>= 1)
  if (interval >= update_interval * 3 / 4)
   break;

 i2c_smbus_write_byte_data(client, LM63_REG_CONVRATE, i);
 data->update_interval = UPDATE_INTERVAL(data->max_convrate_hz, i);
}
