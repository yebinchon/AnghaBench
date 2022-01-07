
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct w83627hf_data {scalar_t__ type; int* pwm_freq; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int W83627HF_REG_PWM_FREQ ;
 int * W83637HF_REG_PWM_FREQ ;
 struct w83627hf_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pwm_freq_to_reg (unsigned long) ;
 int pwm_freq_to_reg_627hf (unsigned long) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;
 scalar_t__ w83627hf ;
 int const w83627hf_read_value (struct w83627hf_data*,int ) ;
 int w83627hf_write_value (struct w83627hf_data*,int ,int) ;

__attribute__((used)) static ssize_t
pwm_freq_store(struct device *dev, struct device_attribute *devattr,
        const char *buf, size_t count)
{
 int nr = to_sensor_dev_attr(devattr)->index;
 struct w83627hf_data *data = dev_get_drvdata(dev);
 static const u8 mask[]={0xF8, 0x8F};
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);

 if (data->type == w83627hf) {
  data->pwm_freq[nr] = pwm_freq_to_reg_627hf(val);
  w83627hf_write_value(data, W83627HF_REG_PWM_FREQ,
    (data->pwm_freq[nr] << (nr*4)) |
    (w83627hf_read_value(data,
    W83627HF_REG_PWM_FREQ) & mask[nr]));
 } else {
  data->pwm_freq[nr] = pwm_freq_to_reg(val);
  w83627hf_write_value(data, W83637HF_REG_PWM_FREQ[nr],
    data->pwm_freq[nr]);
 }

 mutex_unlock(&data->update_lock);
 return count;
}
