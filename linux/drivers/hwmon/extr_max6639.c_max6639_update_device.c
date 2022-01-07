
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max6639_data {int valid; int status; int* fan; int* temp; int* temp_fault; int update_lock; scalar_t__ last_updated; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;
struct device {int dummy; } ;


 struct max6639_data* ERR_PTR (int) ;
 int HZ ;
 int MAX6639_REG_FAN_CNT (int) ;
 int MAX6639_REG_STATUS ;
 int MAX6639_REG_TEMP (int) ;
 int MAX6639_REG_TEMP_EXT (int) ;
 int dev_dbg (int *,char*) ;
 struct max6639_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static struct max6639_data *max6639_update_device(struct device *dev)
{
 struct max6639_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 struct max6639_data *ret = data;
 int i;
 int status_reg;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + 2 * HZ) || !data->valid) {
  int res;

  dev_dbg(&client->dev, "Starting max6639 update\n");

  status_reg = i2c_smbus_read_byte_data(client,
            MAX6639_REG_STATUS);
  if (status_reg < 0) {
   ret = ERR_PTR(status_reg);
   goto abort;
  }

  data->status = status_reg;

  for (i = 0; i < 2; i++) {
   res = i2c_smbus_read_byte_data(client,
     MAX6639_REG_FAN_CNT(i));
   if (res < 0) {
    ret = ERR_PTR(res);
    goto abort;
   }
   data->fan[i] = res;

   res = i2c_smbus_read_byte_data(client,
     MAX6639_REG_TEMP_EXT(i));
   if (res < 0) {
    ret = ERR_PTR(res);
    goto abort;
   }
   data->temp[i] = res >> 5;
   data->temp_fault[i] = res & 0x01;

   res = i2c_smbus_read_byte_data(client,
     MAX6639_REG_TEMP(i));
   if (res < 0) {
    ret = ERR_PTR(res);
    goto abort;
   }
   data->temp[i] |= res << 3;
  }

  data->last_updated = jiffies;
  data->valid = 1;
 }
abort:
 mutex_unlock(&data->update_lock);

 return ret;
}
