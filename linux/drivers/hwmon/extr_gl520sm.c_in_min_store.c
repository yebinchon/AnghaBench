
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_client {int dummy; } ;
struct gl520_data {int* in_min; int update_lock; struct i2c_client* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int * GL520_REG_IN_MIN ;
 int IN_TO_REG (long) ;
 int VDD_TO_REG (long) ;
 struct gl520_data* dev_get_drvdata (struct device*) ;
 int gl520_read_value (struct i2c_client*,int ) ;
 int gl520_write_value (struct i2c_client*,int ,int) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t in_min_store(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct gl520_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int n = to_sensor_dev_attr(attr)->index;
 u8 r;
 long v;
 int err;

 err = kstrtol(buf, 10, &v);
 if (err)
  return err;

 mutex_lock(&data->update_lock);

 if (n == 0)
  r = VDD_TO_REG(v);
 else
  r = IN_TO_REG(v);

 data->in_min[n] = r;

 if (n < 4)
  gl520_write_value(client, GL520_REG_IN_MIN[n],
      (gl520_read_value(client, GL520_REG_IN_MIN[n])
       & ~0xff) | r);
 else
  gl520_write_value(client, GL520_REG_IN_MIN[n], r);

 mutex_unlock(&data->update_lock);
 return count;
}
