
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int enable; int pwm; int auto_pwm_min; } ;
struct adm1026_data {int config1; int update_lock; TYPE_1__ pwm1; struct i2c_client* client; } ;
typedef int ssize_t ;


 int ADM1026_REG_CONFIG1 ;
 int ADM1026_REG_PWM ;
 int CFG1_PWM_AFC ;
 int EINVAL ;
 int PWM_MIN_TO_REG (int ) ;
 int PWM_TO_REG (int) ;
 int adm1026_write_value (struct i2c_client*,int ,int) ;
 struct adm1026_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t pwm1_enable_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct adm1026_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int old_enable;
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;

 if (val >= 3)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 old_enable = data->pwm1.enable;
 data->pwm1.enable = val;
 data->config1 = (data->config1 & ~CFG1_PWM_AFC)
   | ((val == 2) ? CFG1_PWM_AFC : 0);
 adm1026_write_value(client, ADM1026_REG_CONFIG1, data->config1);
 if (val == 2) {
  data->pwm1.pwm = PWM_TO_REG((data->pwm1.pwm & 0x0f) |
   PWM_MIN_TO_REG(data->pwm1.auto_pwm_min));
  adm1026_write_value(client, ADM1026_REG_PWM, data->pwm1.pwm);
 } else if (!((old_enable == 1) && (val == 1))) {

  data->pwm1.pwm = 255;
  adm1026_write_value(client, ADM1026_REG_PWM, data->pwm1.pwm);
 }
 mutex_unlock(&data->update_lock);

 return count;
}
