
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pc87427_data {int pwm_auto_ok; int lock; int * pwm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 size_t EINVAL ;
 struct pc87427_data* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pc87427_readall_pwm (struct pc87427_data*,int) ;
 int pwm_enable_to_reg (unsigned long,int ) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;
 int update_pwm_enable (struct pc87427_data*,int,int ) ;

__attribute__((used)) static ssize_t pwm_enable_store(struct device *dev,
    struct device_attribute *devattr,
    const char *buf, size_t count)
{
 struct pc87427_data *data = dev_get_drvdata(dev);
 int nr = to_sensor_dev_attr(devattr)->index;
 unsigned long val;

 if (kstrtoul(buf, 10, &val) < 0 || val > 2)
  return -EINVAL;

 if (val == 2 && !(data->pwm_auto_ok & (1 << nr)))
  return -EINVAL;

 mutex_lock(&data->lock);
 pc87427_readall_pwm(data, nr);
 update_pwm_enable(data, nr, pwm_enable_to_reg(val, data->pwm[nr]));
 mutex_unlock(&data->lock);

 return count;
}
