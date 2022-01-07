
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thmc50_data {scalar_t__ type; int valid; int update_lock; scalar_t__ last_updated; void* alarms; void* analog_out; void** temp_critical; void** temp_min; void** temp_max; void** temp_input; scalar_t__ has_temp3; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int HZ ;
 int THMC50_REG_ANALOG_OUT ;
 int THMC50_REG_CONF ;
 int THMC50_REG_CONF_PROGRAMMED ;
 int THMC50_REG_INTR ;
 int * THMC50_REG_TEMP ;
 int * THMC50_REG_TEMP_CRITICAL ;
 int * THMC50_REG_TEMP_DEFAULT ;
 int * THMC50_REG_TEMP_MAX ;
 int * THMC50_REG_TEMP_MIN ;
 struct thmc50_data* dev_get_drvdata (struct device*) ;
 void* i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ thmc50 ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static struct thmc50_data *thmc50_update_device(struct device *dev)
{
 struct thmc50_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int timeout = HZ / 5 + (data->type == thmc50 ? HZ : 0);

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + timeout)
     || !data->valid) {

  int temps = data->has_temp3 ? 3 : 2;
  int i;
  int prog = i2c_smbus_read_byte_data(client, THMC50_REG_CONF);

  prog &= THMC50_REG_CONF_PROGRAMMED;

  for (i = 0; i < temps; i++) {
   data->temp_input[i] = i2c_smbus_read_byte_data(client,
      THMC50_REG_TEMP[i]);
   data->temp_max[i] = i2c_smbus_read_byte_data(client,
      THMC50_REG_TEMP_MAX[i]);
   data->temp_min[i] = i2c_smbus_read_byte_data(client,
      THMC50_REG_TEMP_MIN[i]);
   data->temp_critical[i] =
    i2c_smbus_read_byte_data(client,
     prog ? THMC50_REG_TEMP_CRITICAL[i]
          : THMC50_REG_TEMP_DEFAULT[i]);
  }
  data->analog_out =
      i2c_smbus_read_byte_data(client, THMC50_REG_ANALOG_OUT);
  data->alarms =
      i2c_smbus_read_byte_data(client, THMC50_REG_INTR);
  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);

 return data;
}
