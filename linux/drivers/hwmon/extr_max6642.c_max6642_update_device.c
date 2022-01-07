
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct max6642_data {int valid; int* temp_input; int update_lock; scalar_t__ last_updated; void* alarms; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ HZ ;
 int MAX6642_REG_R_LOCAL_TEMP ;
 int MAX6642_REG_R_LOCAL_TEMPL ;
 int MAX6642_REG_R_REMOTE_TEMP ;
 int MAX6642_REG_R_REMOTE_TEMPL ;
 int MAX6642_REG_R_STATUS ;
 int dev_dbg (struct device*,char*) ;
 struct max6642_data* dev_get_drvdata (struct device*) ;
 void* i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static struct max6642_data *max6642_update_device(struct device *dev)
{
 struct max6642_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 u16 val, tmp;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + HZ) || !data->valid) {
  dev_dbg(dev, "Updating max6642 data.\n");
  val = i2c_smbus_read_byte_data(client,
     MAX6642_REG_R_LOCAL_TEMPL);
  tmp = (val >> 6) & 3;
  val = i2c_smbus_read_byte_data(client,
     MAX6642_REG_R_LOCAL_TEMP);
  val = (val << 2) | tmp;
  data->temp_input[0] = val;
  val = i2c_smbus_read_byte_data(client,
     MAX6642_REG_R_REMOTE_TEMPL);
  tmp = (val >> 6) & 3;
  val = i2c_smbus_read_byte_data(client,
     MAX6642_REG_R_REMOTE_TEMP);
  val = (val << 2) | tmp;
  data->temp_input[1] = val;
  data->alarms = i2c_smbus_read_byte_data(client,
     MAX6642_REG_R_STATUS);

  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);

 return data;
}
