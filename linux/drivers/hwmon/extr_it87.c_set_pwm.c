
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct it87_data {int* pwm_ctrl; int* pwm_duty; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EBUSY ;
 size_t EINVAL ;
 int * IT87_REG_PWM ;
 int * IT87_REG_PWM_DUTY ;
 struct it87_data* dev_get_drvdata (struct device*) ;
 scalar_t__ has_newer_autopwm (struct it87_data*) ;
 int it87_update_pwm_ctrl (struct it87_data*,int) ;
 int it87_write_value (struct it87_data*,int ,int) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 void* pwm_to_reg (struct it87_data*,long) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_pwm(struct device *dev, struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 struct it87_data *data = dev_get_drvdata(dev);
 int nr = sensor_attr->index;
 long val;

 if (kstrtol(buf, 10, &val) < 0 || val < 0 || val > 255)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 it87_update_pwm_ctrl(data, nr);
 if (has_newer_autopwm(data)) {




  if (data->pwm_ctrl[nr] & 0x80) {
   mutex_unlock(&data->update_lock);
   return -EBUSY;
  }
  data->pwm_duty[nr] = pwm_to_reg(data, val);
  it87_write_value(data, IT87_REG_PWM_DUTY[nr],
     data->pwm_duty[nr]);
 } else {
  data->pwm_duty[nr] = pwm_to_reg(data, val);




  if (!(data->pwm_ctrl[nr] & 0x80)) {
   data->pwm_ctrl[nr] = data->pwm_duty[nr];
   it87_write_value(data, IT87_REG_PWM[nr],
      data->pwm_ctrl[nr]);
  }
 }
 mutex_unlock(&data->update_lock);
 return count;
}
