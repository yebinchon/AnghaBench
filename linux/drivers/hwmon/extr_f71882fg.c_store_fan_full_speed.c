
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f71882fg_data {long* fan_full_speed; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int F71882FG_REG_FAN_FULL_SPEED (int) ;
 long clamp_val (long,int,int) ;
 struct f71882fg_data* dev_get_drvdata (struct device*) ;
 int f71882fg_write16 (struct f71882fg_data*,int ,long) ;
 long fan_to_reg (long) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t store_fan_full_speed(struct device *dev,
        struct device_attribute *devattr,
        const char *buf, size_t count)
{
 struct f71882fg_data *data = dev_get_drvdata(dev);
 int err, nr = to_sensor_dev_attr_2(devattr)->index;
 long val;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 val = clamp_val(val, 23, 1500000);
 val = fan_to_reg(val);

 mutex_lock(&data->update_lock);
 f71882fg_write16(data, F71882FG_REG_FAN_FULL_SPEED(nr), val);
 data->fan_full_speed[nr] = val;
 mutex_unlock(&data->update_lock);

 return count;
}
