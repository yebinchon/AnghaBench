
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max16065_data {int valid; int num_adc; int update_lock; scalar_t__ last_updated; void** fault; void* curr_sense; void** adc; scalar_t__ have_current; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int DIV_ROUND_UP (int,int) ;
 scalar_t__ HZ ;
 int MAX16065_ADC (int) ;
 int MAX16065_CSP_ADC ;
 int MAX16065_CURR_SENSE ;
 int MAX16065_FAULT (int) ;
 size_t MAX16065_NUM_ADC ;
 struct max16065_data* dev_get_drvdata (struct device*) ;
 void* i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 scalar_t__ jiffies ;
 void* max16065_read_adc (struct i2c_client*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static struct max16065_data *max16065_update_device(struct device *dev)
{
 struct max16065_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;

 mutex_lock(&data->update_lock);
 if (time_after(jiffies, data->last_updated + HZ) || !data->valid) {
  int i;

  for (i = 0; i < data->num_adc; i++)
   data->adc[i]
     = max16065_read_adc(client, MAX16065_ADC(i));

  if (data->have_current) {
   data->adc[MAX16065_NUM_ADC]
     = max16065_read_adc(client, MAX16065_CSP_ADC);
   data->curr_sense
     = i2c_smbus_read_byte_data(client,
           MAX16065_CURR_SENSE);
  }

  for (i = 0; i < DIV_ROUND_UP(data->num_adc, 8); i++)
   data->fault[i]
     = i2c_smbus_read_byte_data(client, MAX16065_FAULT(i));

  data->last_updated = jiffies;
  data->valid = 1;
 }
 mutex_unlock(&data->update_lock);
 return data;
}
