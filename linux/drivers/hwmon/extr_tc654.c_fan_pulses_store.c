
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tc654_data {int config; int update_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int EINVAL ;
 int* TC654_FAN_PULSE_SHIFT ;
 int TC654_REG_CONFIG ;
 struct tc654_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t fan_pulses_store(struct device *dev,
    struct device_attribute *da, const char *buf,
    size_t count)
{
 int nr = to_sensor_dev_attr(da)->index;
 struct tc654_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 u8 config;
 unsigned long val;
 int ret;

 if (kstrtoul(buf, 10, &val))
  return -EINVAL;

 switch (val) {
 case 1:
  config = 0;
  break;
 case 2:
  config = 1;
  break;
 case 4:
  config = 2;
  break;
 case 8:
  config = 3;
  break;
 default:
  return -EINVAL;
 }

 mutex_lock(&data->update_lock);

 data->config &= ~(0x03 << TC654_FAN_PULSE_SHIFT[nr]);
 data->config |= (config << TC654_FAN_PULSE_SHIFT[nr]);
 ret = i2c_smbus_write_byte_data(client, TC654_REG_CONFIG, data->config);

 mutex_unlock(&data->update_lock);
 return ret < 0 ? ret : count;
}
