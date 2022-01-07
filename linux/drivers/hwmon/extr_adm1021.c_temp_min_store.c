
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1021_data {int* temp_min; int update_lock; struct i2c_client* client; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int ADM1021_REG_THYST_W (int) ;
 int clamp_val (long,int,int) ;
 struct adm1021_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int read_only ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_min_store(struct device *dev,
         struct device_attribute *devattr,
         const char *buf, size_t count)
{
 int index = to_sensor_dev_attr(devattr)->index;
 struct adm1021_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 long temp;
 int reg_val, err;

 err = kstrtol(buf, 10, &temp);
 if (err)
  return err;
 temp /= 1000;

 mutex_lock(&data->update_lock);
 reg_val = clamp_val(temp, -128, 127);
 data->temp_min[index] = reg_val * 1000;
 if (!read_only)
  i2c_smbus_write_byte_data(client, ADM1021_REG_THYST_W(index),
       reg_val);
 mutex_unlock(&data->update_lock);

 return count;
}
