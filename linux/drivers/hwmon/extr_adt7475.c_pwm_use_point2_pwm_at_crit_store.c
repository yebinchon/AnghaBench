
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int lock; int config4; struct i2c_client* client; } ;
typedef size_t ssize_t ;


 int CONFIG4_MAXDUTY ;
 size_t EINVAL ;
 int REG_CONFIG4 ;
 struct adt7475_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t pwm_use_point2_pwm_at_crit_store(struct device *dev,
     struct device_attribute *devattr,
     const char *buf, size_t count)
{
 struct adt7475_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 long val;

 if (kstrtol(buf, 10, &val))
  return -EINVAL;
 if (val != 0 && val != 1)
  return -EINVAL;

 mutex_lock(&data->lock);
 data->config4 = i2c_smbus_read_byte_data(client, REG_CONFIG4);
 if (val)
  data->config4 |= CONFIG4_MAXDUTY;
 else
  data->config4 &= ~CONFIG4_MAXDUTY;
 i2c_smbus_write_byte_data(client, REG_CONFIG4, data->config4);
 mutex_unlock(&data->lock);

 return count;
}
