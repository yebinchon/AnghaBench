
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct lm83_data {int update_lock; int * temp; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int * LM83_REG_W_HIGH ;
 int TEMP_TO_REG (long) ;
 struct lm83_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_store(struct device *dev,
     struct device_attribute *devattr, const char *buf,
     size_t count)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct lm83_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 long val;
 int nr = attr->index;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err < 0)
  return err;

 mutex_lock(&data->update_lock);
 data->temp[nr] = TEMP_TO_REG(val);
 i2c_smbus_write_byte_data(client, LM83_REG_W_HIGH[nr - 4],
      data->temp[nr]);
 mutex_unlock(&data->update_lock);
 return count;
}
