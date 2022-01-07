
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f71882fg_data {int pwm_enable; long** pwm_auto_point_pwm; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; int nr; } ;


 int F71882FG_REG_POINT_PWM (int,int) ;
 int F71882FG_REG_PWM_ENABLE ;
 long clamp_val (long,int ,int) ;
 struct f71882fg_data* dev_get_drvdata (struct device*) ;
 int f71882fg_read8 (struct f71882fg_data*,int ) ;
 int f71882fg_write8 (struct f71882fg_data*,int ,long) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t store_pwm_auto_point_pwm(struct device *dev,
     struct device_attribute *devattr,
     const char *buf, size_t count)
{
 struct f71882fg_data *data = dev_get_drvdata(dev);
 int err, pwm = to_sensor_dev_attr_2(devattr)->index;
 int point = to_sensor_dev_attr_2(devattr)->nr;
 long val;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 val = clamp_val(val, 0, 255);

 mutex_lock(&data->update_lock);
 data->pwm_enable = f71882fg_read8(data, F71882FG_REG_PWM_ENABLE);
 if (data->pwm_enable & (1 << (2 * pwm))) {

 } else {

  if (val < 29)
   val = 255;
  else
   val = (255 - val) * 32 / val;
 }
 f71882fg_write8(data, F71882FG_REG_POINT_PWM(pwm, point), val);
 data->pwm_auto_point_pwm[pwm][point] = val;
 mutex_unlock(&data->update_lock);

 return count;
}
