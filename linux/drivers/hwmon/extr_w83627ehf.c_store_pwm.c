
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83627ehf_data {unsigned long* pwm; int update_lock; int * REG_PWM; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 unsigned long clamp_val (unsigned long,int ,int) ;
 struct w83627ehf_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 int w83627ehf_write_value (struct w83627ehf_data*,int ,unsigned long) ;

__attribute__((used)) static ssize_t
store_pwm(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t count)
{
 struct w83627ehf_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 int nr = sensor_attr->index;
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err < 0)
  return err;

 val = clamp_val(val, 0, 255);

 mutex_lock(&data->update_lock);
 data->pwm[nr] = val;
 w83627ehf_write_value(data, data->REG_PWM[nr], val);
 mutex_unlock(&data->update_lock);
 return count;
}
