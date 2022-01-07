
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f71882fg_data {scalar_t__ type; long in1_max; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int F71882FG_REG_IN1_HIGH ;
 int F81866_REG_IN1_HIGH ;
 long clamp_val (long,int ,int) ;
 struct f71882fg_data* dev_get_drvdata (struct device*) ;
 int f71882fg_write8 (struct f71882fg_data*,int ,long) ;
 scalar_t__ f81866a ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t store_in_max(struct device *dev, struct device_attribute
 *devattr, const char *buf, size_t count)
{
 struct f71882fg_data *data = dev_get_drvdata(dev);
 int err;
 long val;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 val /= 8;
 val = clamp_val(val, 0, 255);

 mutex_lock(&data->update_lock);
 if (data->type == f81866a)
  f71882fg_write8(data, F81866_REG_IN1_HIGH, val);
 else
  f71882fg_write8(data, F71882FG_REG_IN1_HIGH, val);
 data->in1_max = val;
 mutex_unlock(&data->update_lock);

 return count;
}
