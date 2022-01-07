
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct w83l786ng_data {int update_lock; int * fan_min; int * fan_div; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int DIV_FROM_REG (int ) ;
 int FAN_TO_REG (unsigned long,int ) ;
 int W83L786NG_REG_FAN_MIN (int) ;
 struct w83l786ng_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;
 int w83l786ng_write_value (struct i2c_client*,int ,int ) ;

__attribute__((used)) static ssize_t
store_fan_min(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 int nr = to_sensor_dev_attr(attr)->index;
 struct w83l786ng_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 data->fan_min[nr] = FAN_TO_REG(val, DIV_FROM_REG(data->fan_div[nr]));
 w83l786ng_write_value(client, W83L786NG_REG_FAN_MIN(nr),
         data->fan_min[nr]);
 mutex_unlock(&data->update_lock);

 return count;
}
