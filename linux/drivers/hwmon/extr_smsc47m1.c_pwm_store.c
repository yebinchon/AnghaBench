
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc47m1_data {int* pwm; int update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int PWM_TO_REG (long) ;
 int * SMSC47M1_REG_PWM ;
 struct smsc47m1_data* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smsc47m1_write_value (struct smsc47m1_data*,int ,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t pwm_store(struct device *dev, struct device_attribute *devattr,
    const char *buf, size_t count)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct smsc47m1_data *data = dev_get_drvdata(dev);
 int nr = attr->index;
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 if (val < 0 || val > 255)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 data->pwm[nr] &= 0x81;
 data->pwm[nr] |= PWM_TO_REG(val);
 smsc47m1_write_value(data, SMSC47M1_REG_PWM[nr],
        data->pwm[nr]);
 mutex_unlock(&data->update_lock);

 return count;
}
