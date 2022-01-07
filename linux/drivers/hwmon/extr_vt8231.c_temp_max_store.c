
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt8231_data {int update_lock; int * temp_max; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int TEMP_MAXMIN_TO_REG (long) ;
 int clamp_val (int ,int ,int) ;
 struct vt8231_data* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * regtempmax ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 int vt8231_write_value (struct vt8231_data*,int ,int ) ;

__attribute__((used)) static ssize_t temp_max_store(struct device *dev,
         struct device_attribute *attr, const char *buf,
         size_t count)
{
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 int nr = sensor_attr->index;
 struct vt8231_data *data = dev_get_drvdata(dev);
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 data->temp_max[nr] = clamp_val(TEMP_MAXMIN_TO_REG(val), 0, 255);
 vt8231_write_value(data, regtempmax[nr], data->temp_max[nr]);
 mutex_unlock(&data->update_lock);
 return count;
}
