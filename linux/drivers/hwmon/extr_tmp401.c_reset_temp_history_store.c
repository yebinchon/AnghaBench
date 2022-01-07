
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmp401_data {int update_lock; scalar_t__ valid; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int ** TMP401_TEMP_MSB_WRITE ;
 int dev_err (struct device*,char*,long) ;
 struct tmp401_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,long) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t reset_temp_history_store(struct device *dev,
     struct device_attribute *devattr,
     const char *buf, size_t count)
{
 struct tmp401_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 long val;

 if (kstrtol(buf, 10, &val))
  return -EINVAL;

 if (val != 1) {
  dev_err(dev,
   "temp_reset_history value %ld not supported. Use 1 to reset the history!\n",
   val);
  return -EINVAL;
 }
 mutex_lock(&data->update_lock);
 i2c_smbus_write_byte_data(client, TMP401_TEMP_MSB_WRITE[5][0], val);
 data->valid = 0;
 mutex_unlock(&data->update_lock);

 return count;
}
