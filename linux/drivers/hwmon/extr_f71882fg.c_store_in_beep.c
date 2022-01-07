
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f71882fg_data {scalar_t__ type; int in_beep; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int F71882FG_REG_IN_BEEP ;
 int F81866_REG_IN_BEEP ;
 struct f71882fg_data* dev_get_drvdata (struct device*) ;
 void* f71882fg_read8 (struct f71882fg_data*,int ) ;
 int f71882fg_write8 (struct f71882fg_data*,int ,int) ;
 scalar_t__ f81866a ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t store_in_beep(struct device *dev, struct device_attribute
 *devattr, const char *buf, size_t count)
{
 struct f71882fg_data *data = dev_get_drvdata(dev);
 int err, nr = to_sensor_dev_attr_2(devattr)->index;
 unsigned long val;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 if (data->type == f81866a)
  data->in_beep = f71882fg_read8(data, F81866_REG_IN_BEEP);
 else
  data->in_beep = f71882fg_read8(data, F71882FG_REG_IN_BEEP);

 if (val)
  data->in_beep |= 1 << nr;
 else
  data->in_beep &= ~(1 << nr);

 if (data->type == f81866a)
  f71882fg_write8(data, F81866_REG_IN_BEEP, data->in_beep);
 else
  f71882fg_write8(data, F71882FG_REG_IN_BEEP, data->in_beep);
 mutex_unlock(&data->update_lock);

 return count;
}
