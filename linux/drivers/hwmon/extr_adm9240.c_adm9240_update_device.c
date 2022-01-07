
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct adm9240_data {int valid; int* in; int alarms; int temp; int* fan; int* fan_div; int* fan_min; int* in_min; int* in_max; int* temp_max; int vid; int aout; int update_lock; void* last_updated_config; void* last_updated_measure; struct i2c_client* client; } ;


 int ADM9240_REG_ANALOG_OUT ;
 int ADM9240_REG_FAN (int) ;
 int ADM9240_REG_FAN_MIN (int) ;
 int ADM9240_REG_IN (int) ;
 int ADM9240_REG_INT (int) ;
 int ADM9240_REG_IN_MAX (int) ;
 int ADM9240_REG_IN_MIN (int) ;
 int ADM9240_REG_TEMP ;
 int ADM9240_REG_TEMP_CONF ;
 int ADM9240_REG_TEMP_MAX (int) ;
 int ADM9240_REG_VID4 ;
 int ADM9240_REG_VID_FAN_DIV ;
 int HZ ;
 int adm9240_write_fan_div (struct i2c_client*,int,int) ;
 struct adm9240_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 void* jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (void*,void*) ;

__attribute__((used)) static struct adm9240_data *adm9240_update_device(struct device *dev)
{
 struct adm9240_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int i;

 mutex_lock(&data->update_lock);


 if (time_after(jiffies, data->last_updated_measure + (HZ * 7 / 4))
   || !data->valid) {

  for (i = 0; i < 6; i++) {
   data->in[i] = i2c_smbus_read_byte_data(client,
     ADM9240_REG_IN(i));
  }
  data->alarms = i2c_smbus_read_byte_data(client,
     ADM9240_REG_INT(0)) |
     i2c_smbus_read_byte_data(client,
     ADM9240_REG_INT(1)) << 8;






  data->temp = (i2c_smbus_read_byte_data(client,
     ADM9240_REG_TEMP) << 8) |
     i2c_smbus_read_byte_data(client,
     ADM9240_REG_TEMP_CONF);

  for (i = 0; i < 2; i++) {
   data->fan[i] = i2c_smbus_read_byte_data(client,
     ADM9240_REG_FAN(i));


   if (data->valid && data->fan[i] == 255 &&
     data->fan_div[i] < 3) {

    adm9240_write_fan_div(client, i,
      ++data->fan_div[i]);


    if (data->fan_min[i] < 255 &&
      data->fan_min[i] >= 2)
     data->fan_min[i] /= 2;
   }
  }
  data->last_updated_measure = jiffies;
 }


 if (time_after(jiffies, data->last_updated_config + (HZ * 300))
   || !data->valid) {

  for (i = 0; i < 6; i++) {
   data->in_min[i] = i2c_smbus_read_byte_data(client,
     ADM9240_REG_IN_MIN(i));
   data->in_max[i] = i2c_smbus_read_byte_data(client,
     ADM9240_REG_IN_MAX(i));
  }
  for (i = 0; i < 2; i++) {
   data->fan_min[i] = i2c_smbus_read_byte_data(client,
     ADM9240_REG_FAN_MIN(i));
  }
  data->temp_max[0] = i2c_smbus_read_byte_data(client,
    ADM9240_REG_TEMP_MAX(0));
  data->temp_max[1] = i2c_smbus_read_byte_data(client,
    ADM9240_REG_TEMP_MAX(1));


  i = i2c_smbus_read_byte_data(client, ADM9240_REG_VID_FAN_DIV);
  data->fan_div[0] = (i >> 4) & 3;
  data->fan_div[1] = (i >> 6) & 3;
  data->vid = i & 0x0f;
  data->vid |= (i2c_smbus_read_byte_data(client,
     ADM9240_REG_VID4) & 1) << 4;

  data->aout = i2c_smbus_read_byte_data(client,
    ADM9240_REG_ANALOG_OUT);

  data->last_updated_config = jiffies;
  data->valid = 1;
 }
 mutex_unlock(&data->update_lock);
 return data;
}
