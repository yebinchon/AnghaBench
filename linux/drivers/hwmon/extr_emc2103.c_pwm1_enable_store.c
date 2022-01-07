
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
struct emc2103_data {int fan_rpm_control; int update_lock; struct i2c_client* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 size_t EINVAL ;
 int REG_FAN_CONF1 ;
 struct emc2103_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int read_u8_from_i2c (struct i2c_client*,int ,int*) ;

__attribute__((used)) static ssize_t pwm1_enable_store(struct device *dev,
     struct device_attribute *da, const char *buf,
     size_t count)
{
 struct emc2103_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 long new_value;
 u8 conf_reg;

 int result = kstrtol(buf, 10, &new_value);
 if (result < 0)
  return result;

 mutex_lock(&data->update_lock);
 switch (new_value) {
 case 0:
  data->fan_rpm_control = 0;
  break;
 case 3:
  data->fan_rpm_control = 1;
  break;
 default:
  count = -EINVAL;
  goto err;
 }

 result = read_u8_from_i2c(client, REG_FAN_CONF1, &conf_reg);
 if (result) {
  count = result;
  goto err;
 }

 if (data->fan_rpm_control)
  conf_reg |= 0x80;
 else
  conf_reg &= ~0x80;

 i2c_smbus_write_byte_data(client, REG_FAN_CONF1, conf_reg);
err:
 mutex_unlock(&data->update_lock);
 return count;
}
