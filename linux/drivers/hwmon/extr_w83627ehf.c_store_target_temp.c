
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83627ehf_data {long* target_temp; int update_lock; int * REG_TARGET; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DIV_ROUND_CLOSEST (long,int) ;
 long clamp_val (int ,int ,int) ;
 struct w83627ehf_data* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 int w83627ehf_write_value (struct w83627ehf_data*,int ,long) ;

__attribute__((used)) static ssize_t
store_target_temp(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t count)
{
 struct w83627ehf_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 int nr = sensor_attr->index;
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err < 0)
  return err;

 val = clamp_val(DIV_ROUND_CLOSEST(val, 1000), 0, 127);

 mutex_lock(&data->update_lock);
 data->target_temp[nr] = val;
 w83627ehf_write_value(data, data->REG_TARGET[nr], val);
 mutex_unlock(&data->update_lock);
 return count;
}
