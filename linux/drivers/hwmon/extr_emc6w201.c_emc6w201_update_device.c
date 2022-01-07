
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct emc6w201_data {int valid; int update_lock; scalar_t__ last_updated; void*** fan; void*** temp; void*** in; struct i2c_client* client; } ;
struct device {int dummy; } ;


 int EMC6W201_REG_FAN (int) ;
 int EMC6W201_REG_FAN_MIN (int) ;
 int EMC6W201_REG_IN (int) ;
 int EMC6W201_REG_IN_HIGH (int) ;
 int EMC6W201_REG_IN_LOW (int) ;
 int EMC6W201_REG_TEMP (int) ;
 int EMC6W201_REG_TEMP_HIGH (int) ;
 int EMC6W201_REG_TEMP_LOW (int) ;
 scalar_t__ HZ ;
 struct emc6w201_data* dev_get_drvdata (struct device*) ;
 void* emc6w201_read16 (struct i2c_client*,int ) ;
 void* emc6w201_read8 (struct i2c_client*,int ) ;
 size_t input ;
 scalar_t__ jiffies ;
 size_t max ;
 size_t min ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static struct emc6w201_data *emc6w201_update_device(struct device *dev)
{
 struct emc6w201_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int nr;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + HZ) || !data->valid) {
  for (nr = 0; nr < 6; nr++) {
   data->in[input][nr] =
    emc6w201_read8(client,
      EMC6W201_REG_IN(nr));
   data->in[min][nr] =
    emc6w201_read8(client,
      EMC6W201_REG_IN_LOW(nr));
   data->in[max][nr] =
    emc6w201_read8(client,
      EMC6W201_REG_IN_HIGH(nr));
  }

  for (nr = 0; nr < 6; nr++) {
   data->temp[input][nr] =
    emc6w201_read8(client,
      EMC6W201_REG_TEMP(nr));
   data->temp[min][nr] =
    emc6w201_read8(client,
      EMC6W201_REG_TEMP_LOW(nr));
   data->temp[max][nr] =
    emc6w201_read8(client,
      EMC6W201_REG_TEMP_HIGH(nr));
  }

  for (nr = 0; nr < 5; nr++) {
   data->fan[input][nr] =
    emc6w201_read16(client,
      EMC6W201_REG_FAN(nr));
   data->fan[min][nr] =
    emc6w201_read16(client,
      EMC6W201_REG_FAN_MIN(nr));
  }

  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);

 return data;
}
