
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f71882fg_data {int pwm_enable; scalar_t__ type; long* pwm; int* fan_target; int* fan_full_speed; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 size_t EROFS ;
 int F71882FG_REG_FAN_FULL_SPEED (int) ;
 int F71882FG_REG_FAN_TARGET (int) ;
 int F71882FG_REG_PWM (int) ;
 int F71882FG_REG_PWM_ENABLE ;
 long clamp_val (long,int ,int) ;
 struct f71882fg_data* dev_get_drvdata (struct device*) ;
 int f71882fg_read16 (struct f71882fg_data*,int ) ;
 int f71882fg_read8 (struct f71882fg_data*,int ) ;
 int f71882fg_write16 (struct f71882fg_data*,int ,int) ;
 int f71882fg_write8 (struct f71882fg_data*,int ,long) ;
 scalar_t__ f8000 ;
 long fan_from_reg (int) ;
 int fan_to_reg (long) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t store_pwm(struct device *dev,
    struct device_attribute *devattr, const char *buf,
    size_t count)
{
 struct f71882fg_data *data = dev_get_drvdata(dev);
 int err, nr = to_sensor_dev_attr_2(devattr)->index;
 long val;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 val = clamp_val(val, 0, 255);

 mutex_lock(&data->update_lock);
 data->pwm_enable = f71882fg_read8(data, F71882FG_REG_PWM_ENABLE);
 if ((data->type == f8000 && ((data->pwm_enable >> 2 * nr) & 3) != 2) ||
     (data->type != f8000 && !((data->pwm_enable >> 2 * nr) & 2))) {
  count = -EROFS;
  goto leave;
 }
 if (data->pwm_enable & (1 << (2 * nr))) {

  f71882fg_write8(data, F71882FG_REG_PWM(nr), val);
  data->pwm[nr] = val;
 } else {

  int target, full_speed;
  full_speed = f71882fg_read16(data,
          F71882FG_REG_FAN_FULL_SPEED(nr));
  target = fan_to_reg(val * fan_from_reg(full_speed) / 255);
  f71882fg_write16(data, F71882FG_REG_FAN_TARGET(nr), target);
  data->fan_target[nr] = target;
  data->fan_full_speed[nr] = full_speed;
 }
leave:
 mutex_unlock(&data->update_lock);

 return count;
}
