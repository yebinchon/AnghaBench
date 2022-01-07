
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm95234_data {int valid; int status; int update_lock; scalar_t__ last_updated; int * temp; scalar_t__ interval; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int LM95234_REG_STS_FAULT ;
 int LM95234_REG_STS_TCRIT1 ;
 int LM95234_REG_STS_TCRIT2 ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 scalar_t__ jiffies ;
 int lm95234_fill_cache (struct lm95234_data*,struct i2c_client*) ;
 int lm95234_read_temp (struct i2c_client*,int,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static int lm95234_update_device(struct lm95234_data *data)
{
 struct i2c_client *client = data->client;
 int ret;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + data->interval) ||
     !data->valid) {
  int i;

  if (!data->valid) {
   ret = lm95234_fill_cache(data, client);
   if (ret < 0)
    goto abort;
  }

  data->valid = 0;
  for (i = 0; i < ARRAY_SIZE(data->temp); i++) {
   ret = lm95234_read_temp(client, i, &data->temp[i]);
   if (ret < 0)
    goto abort;
  }

  ret = i2c_smbus_read_byte_data(client, LM95234_REG_STS_FAULT);
  if (ret < 0)
   goto abort;
  data->status = ret;

  ret = i2c_smbus_read_byte_data(client, LM95234_REG_STS_TCRIT1);
  if (ret < 0)
   goto abort;
  data->status |= ret << 8;

  ret = i2c_smbus_read_byte_data(client, LM95234_REG_STS_TCRIT2);
  if (ret < 0)
   goto abort;
  data->status |= ret << 16;

  data->last_updated = jiffies;
  data->valid = 1;
 }
 ret = 0;
abort:
 mutex_unlock(&data->update_lock);

 return ret;
}
