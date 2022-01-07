
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sensor_device_attribute {int index; } ;
struct nct6775_data {scalar_t__* REG_PWM_MODE; unsigned long* pwm_mode; int update_lock; int * PWM_MODE_MASK; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct nct6775_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nct6775_read_value (struct nct6775_data*,scalar_t__) ;
 int nct6775_write_value (struct nct6775_data*,scalar_t__,int ) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t
store_pwm_mode(struct device *dev, struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct nct6775_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute *sattr = to_sensor_dev_attr(attr);
 int nr = sattr->index;
 unsigned long val;
 int err;
 u8 reg;

 err = kstrtoul(buf, 10, &val);
 if (err < 0)
  return err;

 if (val > 1)
  return -EINVAL;


 if (data->REG_PWM_MODE[nr] == 0) {
  if (!val)
   return -EINVAL;
  return count;
 }

 mutex_lock(&data->update_lock);
 data->pwm_mode[nr] = val;
 reg = nct6775_read_value(data, data->REG_PWM_MODE[nr]);
 reg &= ~data->PWM_MODE_MASK[nr];
 if (!val)
  reg |= data->PWM_MODE_MASK[nr];
 nct6775_write_value(data, data->REG_PWM_MODE[nr], reg);
 mutex_unlock(&data->update_lock);
 return count;
}
