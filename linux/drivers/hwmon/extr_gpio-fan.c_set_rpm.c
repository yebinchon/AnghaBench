
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_fan_data {int lock; int pwm_enable; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int EPERM ;
 struct gpio_fan_data* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rpm_to_speed_index (struct gpio_fan_data*,unsigned long) ;
 int set_fan_speed (struct gpio_fan_data*,int ) ;

__attribute__((used)) static ssize_t set_rpm(struct device *dev, struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct gpio_fan_data *fan_data = dev_get_drvdata(dev);
 unsigned long rpm;
 int ret = count;

 if (kstrtoul(buf, 10, &rpm))
  return -EINVAL;

 mutex_lock(&fan_data->lock);

 if (!fan_data->pwm_enable) {
  ret = -EPERM;
  goto exit_unlock;
 }

 set_fan_speed(fan_data, rpm_to_speed_index(fan_data, rpm));

exit_unlock:
 mutex_unlock(&fan_data->lock);

 return ret;
}
