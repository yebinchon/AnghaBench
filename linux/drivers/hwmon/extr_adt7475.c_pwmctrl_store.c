
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {size_t index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int lock; int * pwmchan; struct i2c_client* client; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int adt7475_read_pwm (struct i2c_client*,size_t) ;
 struct adt7475_data* dev_get_drvdata (struct device*) ;
 int hw_set_pwm (struct i2c_client*,size_t,long,int ) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t pwmctrl_store(struct device *dev,
        struct device_attribute *attr, const char *buf,
        size_t count)
{
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 struct adt7475_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int r;
 long val;

 if (kstrtol(buf, 10, &val))
  return -EINVAL;

 mutex_lock(&data->lock);

 adt7475_read_pwm(client, sattr->index);
 r = hw_set_pwm(client, sattr->index, val, data->pwmchan[sattr->index]);
 if (r)
  count = r;
 mutex_unlock(&data->lock);

 return count;
}
