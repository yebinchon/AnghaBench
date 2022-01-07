
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc654_data {int update_lock; int * fan_fault; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int EINVAL ;
 int TC654_FAN_FAULT_TO_REG (unsigned long) ;
 int TC654_REG_FAN_FAULT (int) ;
 unsigned long clamp_val (unsigned long,int ,int) ;
 struct tc654_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t fan_min_store(struct device *dev, struct device_attribute *da,
        const char *buf, size_t count)
{
 int nr = to_sensor_dev_attr(da)->index;
 struct tc654_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 unsigned long val;
 int ret;

 if (kstrtoul(buf, 10, &val))
  return -EINVAL;

 val = clamp_val(val, 0, 12750);

 mutex_lock(&data->update_lock);

 data->fan_fault[nr] = TC654_FAN_FAULT_TO_REG(val);
 ret = i2c_smbus_write_byte_data(client, TC654_REG_FAN_FAULT(nr),
     data->fan_fault[nr]);

 mutex_unlock(&data->update_lock);
 return ret < 0 ? ret : count;
}
