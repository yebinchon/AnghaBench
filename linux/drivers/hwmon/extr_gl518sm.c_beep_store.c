
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct gl518_data {int beep_mask; int update_lock; struct i2c_client* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int EINVAL ;
 int GL518_REG_ALARM ;
 struct gl518_data* dev_get_drvdata (struct device*) ;
 int gl518_read_value (struct i2c_client*,int ) ;
 int gl518_write_value (struct i2c_client*,int ,int) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t beep_store(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct gl518_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int bitnr = to_sensor_dev_attr(attr)->index;
 unsigned long bit;
 int err;

 err = kstrtoul(buf, 10, &bit);
 if (err)
  return err;

 if (bit & ~1)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 data->beep_mask = gl518_read_value(client, GL518_REG_ALARM);
 if (bit)
  data->beep_mask |= (1 << bitnr);
 else
  data->beep_mask &= ~(1 << bitnr);
 gl518_write_value(client, GL518_REG_ALARM, data->beep_mask);
 mutex_unlock(&data->update_lock);
 return count;
}
