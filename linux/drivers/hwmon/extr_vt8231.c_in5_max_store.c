
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt8231_data {int update_lock; int * in_max; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int clamp_val (unsigned long,int ,int) ;
 struct vt8231_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * regvoltmax ;
 int vt8231_write_value (struct vt8231_data*,int ,int ) ;

__attribute__((used)) static ssize_t in5_max_store(struct device *dev,
        struct device_attribute *attr, const char *buf,
        size_t count)
{
 struct vt8231_data *data = dev_get_drvdata(dev);
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 data->in_max[5] = clamp_val(((val * 958 * 34) / (10000 * 54)) + 3,
        0, 255);
 vt8231_write_value(data, regvoltmax[5], data->in_max[5]);
 mutex_unlock(&data->update_lock);
 return count;
}
