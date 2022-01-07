
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_fan_data {unsigned long pwm_enable; int lock; scalar_t__ num_speed; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 struct gpio_fan_data* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_fan_speed (struct gpio_fan_data*,scalar_t__) ;

__attribute__((used)) static ssize_t pwm1_enable_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct gpio_fan_data *fan_data = dev_get_drvdata(dev);
 unsigned long val;

 if (kstrtoul(buf, 10, &val) || val > 1)
  return -EINVAL;

 if (fan_data->pwm_enable == val)
  return count;

 mutex_lock(&fan_data->lock);

 fan_data->pwm_enable = val;


 if (val == 0)
  set_fan_speed(fan_data, fan_data->num_speed - 1);

 mutex_unlock(&fan_data->lock);

 return count;
}
