
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7470_data {long* fan_max; int lock; struct i2c_client* client; } ;
typedef size_t ssize_t ;


 int ADT7470_REG_FAN_MAX (size_t) ;
 size_t EINVAL ;
 long FAN_RPM_TO_PERIOD (long) ;
 int adt7470_write_word_data (struct i2c_client*,int ,long) ;
 long clamp_val (long,int,int) ;
 struct adt7470_data* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t fan_max_store(struct device *dev,
        struct device_attribute *devattr,
        const char *buf, size_t count)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct adt7470_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 long temp;

 if (kstrtol(buf, 10, &temp) || !temp)
  return -EINVAL;

 temp = FAN_RPM_TO_PERIOD(temp);
 temp = clamp_val(temp, 1, 65534);

 mutex_lock(&data->lock);
 data->fan_max[attr->index] = temp;
 adt7470_write_word_data(client, ADT7470_REG_FAN_MAX(attr->index), temp);
 mutex_unlock(&data->lock);

 return count;
}
