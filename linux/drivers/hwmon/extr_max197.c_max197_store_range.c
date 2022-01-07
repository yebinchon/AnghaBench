
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {int index; int nr; } ;
struct max197_data {int limit; int lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t ERESTARTSYS ;
 struct max197_data* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int max197_set_bipolarity (struct max197_data*,int) ;
 int max197_set_full_range (struct max197_data*,int) ;
 int max197_set_half_range (struct max197_data*,int) ;
 int max197_set_unipolarity (struct max197_data*,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t max197_store_range(struct device *dev,
      struct device_attribute *devattr,
      const char *buf, size_t count)
{
 struct max197_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute_2 *attr = to_sensor_dev_attr_2(devattr);
 int channel = attr->index;
 bool is_min = attr->nr;
 long value;
 int half = data->limit / 2;
 int full = data->limit;

 if (kstrtol(buf, 10, &value))
  return -EINVAL;

 if (is_min) {
  if (value <= -full)
   value = -full;
  else if (value < 0)
   value = -half;
  else
   value = 0;
 } else {
  if (value >= full)
   value = full;
  else
   value = half;
 }

 if (mutex_lock_interruptible(&data->lock))
  return -ERESTARTSYS;

 if (value == 0) {

  max197_set_unipolarity(data, channel);
 } else if (value == -half) {
  max197_set_bipolarity(data, channel);
  max197_set_half_range(data, channel);
 } else if (value == -full) {
  max197_set_bipolarity(data, channel);
  max197_set_full_range(data, channel);
 } else if (value == half) {

  max197_set_half_range(data, channel);
 } else if (value == full) {

  max197_set_full_range(data, channel);
 }

 mutex_unlock(&data->lock);

 return count;
}
