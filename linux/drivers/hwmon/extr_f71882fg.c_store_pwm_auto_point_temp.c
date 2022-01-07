
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f71882fg_data {long** pwm_auto_point_temp; int update_lock; scalar_t__ auto_point_temp_signed; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; int nr; } ;


 int F71882FG_REG_POINT_TEMP (int,int) ;
 long clamp_val (long,int,int) ;
 struct f71882fg_data* dev_get_drvdata (struct device*) ;
 int f71882fg_write8 (struct f71882fg_data*,int ,long) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t store_pwm_auto_point_temp(struct device *dev,
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

 val /= 1000;

 if (data->auto_point_temp_signed)
  val = clamp_val(val, -128, 127);
 else
  val = clamp_val(val, 0, 127);

 mutex_lock(&data->update_lock);
 f71882fg_write8(data, F71882FG_REG_POINT_TEMP(pwm, point), val);
 data->pwm_auto_point_temp[pwm][point] = val;
 mutex_unlock(&data->update_lock);

 return count;
}
