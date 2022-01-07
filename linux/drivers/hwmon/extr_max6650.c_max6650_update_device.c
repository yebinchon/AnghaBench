
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max6650_data {int valid; int nr_fans; int* tach; int alarm; int update_lock; scalar_t__ last_updated; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 struct max6650_data* ERR_PTR (int) ;
 scalar_t__ HZ ;
 int MAX6650_REG_ALARM ;
 struct max6650_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * tach_reg ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static struct max6650_data *max6650_update_device(struct device *dev)
{
 struct max6650_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int reg, err = 0;
 int i;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + HZ) || !data->valid) {
  for (i = 0; i < data->nr_fans; i++) {
   reg = i2c_smbus_read_byte_data(client, tach_reg[i]);
   if (reg < 0) {
    err = reg;
    goto error;
   }
   data->tach[i] = reg;
  }






  reg = i2c_smbus_read_byte_data(client, MAX6650_REG_ALARM);
  if (reg < 0) {
   err = reg;
   goto error;
  }
  data->alarm |= reg;
  data->last_updated = jiffies;
  data->valid = 1;
 }

error:
 mutex_unlock(&data->update_lock);
 if (err)
  data = ERR_PTR(err);
 return data;
}
