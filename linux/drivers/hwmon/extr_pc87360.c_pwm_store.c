
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct pc87360_data {int update_lock; int * pwm; int fan_conf; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int FAN_CONFIG_INVERT (int ,size_t) ;
 int LD_FAN ;
 int NO_BANK ;
 int PC87360_REG_PWM (size_t) ;
 int PWM_TO_REG (long,int ) ;
 struct pc87360_data* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pc87360_write_value (struct pc87360_data*,int ,int ,int ,int ) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t pwm_store(struct device *dev, struct device_attribute *devattr,
    const char *buf, size_t count)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct pc87360_data *data = dev_get_drvdata(dev);
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 data->pwm[attr->index] = PWM_TO_REG(val,
         FAN_CONFIG_INVERT(data->fan_conf, attr->index));
 pc87360_write_value(data, LD_FAN, NO_BANK, PC87360_REG_PWM(attr->index),
       data->pwm[attr->index]);
 mutex_unlock(&data->update_lock);
 return count;
}
