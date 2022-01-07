
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int enable; int pwm; int auto_pwm_min; } ;
struct adm1026_data {int update_lock; TYPE_1__ pwm1; struct i2c_client* client; } ;
typedef int ssize_t ;


 int ADM1026_REG_PWM ;
 int PWM_MIN_TO_REG (int ) ;
 int PWM_TO_REG (int) ;
 int adm1026_write_value (struct i2c_client*,int ,int) ;
 int clamp_val (unsigned long,int ,int) ;
 struct adm1026_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t temp1_auto_point1_pwm_store(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct adm1026_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 data->pwm1.auto_pwm_min = clamp_val(val, 0, 255);
 if (data->pwm1.enable == 2) {
  data->pwm1.pwm = PWM_TO_REG((data->pwm1.pwm & 0x0f) |
   PWM_MIN_TO_REG(data->pwm1.auto_pwm_min));
  adm1026_write_value(client, ADM1026_REG_PWM, data->pwm1.pwm);
 }
 mutex_unlock(&data->update_lock);
 return count;
}
