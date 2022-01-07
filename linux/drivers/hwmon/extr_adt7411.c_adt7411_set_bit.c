
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7411_data {int update_lock; int next_update; struct i2c_client* client; } ;
typedef int ssize_t ;


 int EINVAL ;
 int adt7411_modify_bit (struct i2c_client*,int ,int ,unsigned long) ;
 struct adt7411_data* dev_get_drvdata (struct device*) ;
 int jiffies ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t adt7411_set_bit(struct device *dev,
          struct device_attribute *attr, const char *buf,
          size_t count)
{
 struct sensor_device_attribute_2 *s_attr2 = to_sensor_dev_attr_2(attr);
 struct adt7411_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int ret;
 unsigned long flag;

 ret = kstrtoul(buf, 0, &flag);
 if (ret || flag > 1)
  return -EINVAL;

 ret = adt7411_modify_bit(client, s_attr2->index, s_attr2->nr, flag);


 mutex_lock(&data->update_lock);
 data->next_update = jiffies;
 mutex_unlock(&data->update_lock);

 return ret < 0 ? ret : count;
}
