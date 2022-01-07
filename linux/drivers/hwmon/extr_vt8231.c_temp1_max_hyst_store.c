
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt8231_data {int update_lock; int * temp_min; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int clamp_val (long,int ,int) ;
 struct vt8231_data* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * regtempmin ;
 int vt8231_write_value (struct vt8231_data*,int ,int ) ;

__attribute__((used)) static ssize_t temp1_max_hyst_store(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct vt8231_data *data = dev_get_drvdata(dev);
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 data->temp_min[0] = clamp_val((val + 500) / 1000, 0, 255);
 vt8231_write_value(data, regtempmin[0], data->temp_min[0]);
 mutex_unlock(&data->update_lock);
 return count;
}
