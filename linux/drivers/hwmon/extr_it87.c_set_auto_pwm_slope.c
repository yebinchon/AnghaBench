
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct it87_data {int** auto_pwm; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int IT87_REG_AUTO_TEMP (int,int) ;
 struct it87_data* dev_get_drvdata (struct device*) ;
 int it87_write_value (struct it87_data*,int ,int) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_auto_pwm_slope(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct it87_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 int nr = sensor_attr->index;
 unsigned long val;

 if (kstrtoul(buf, 10, &val) < 0 || val > 127)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 data->auto_pwm[nr][1] = (data->auto_pwm[nr][1] & 0x80) | val;
 it87_write_value(data, IT87_REG_AUTO_TEMP(nr, 4),
    data->auto_pwm[nr][1]);
 mutex_unlock(&data->update_lock);
 return count;
}
