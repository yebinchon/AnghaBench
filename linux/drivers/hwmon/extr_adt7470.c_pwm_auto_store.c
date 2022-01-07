
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7470_data {long* pwm_automatic; int lock; struct i2c_client* client; } ;
typedef size_t ssize_t ;


 int ADT7470_PWM1_AUTO_MASK ;
 int ADT7470_PWM2_AUTO_MASK ;
 int ADT7470_REG_PWM_CFG (int) ;
 size_t EINVAL ;
 struct adt7470_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int,int) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t pwm_auto_store(struct device *dev,
         struct device_attribute *devattr,
         const char *buf, size_t count)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct adt7470_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int pwm_auto_reg = ADT7470_REG_PWM_CFG(attr->index);
 int pwm_auto_reg_mask;
 long temp;
 u8 reg;

 if (kstrtol(buf, 10, &temp))
  return -EINVAL;

 if (attr->index % 2)
  pwm_auto_reg_mask = ADT7470_PWM2_AUTO_MASK;
 else
  pwm_auto_reg_mask = ADT7470_PWM1_AUTO_MASK;

 if (temp != 2 && temp != 1)
  return -EINVAL;
 temp--;

 mutex_lock(&data->lock);
 data->pwm_automatic[attr->index] = temp;
 reg = i2c_smbus_read_byte_data(client, pwm_auto_reg);
 if (temp)
  reg |= pwm_auto_reg_mask;
 else
  reg &= ~pwm_auto_reg_mask;
 i2c_smbus_write_byte_data(client, pwm_auto_reg, reg);
 mutex_unlock(&data->lock);

 return count;
}
