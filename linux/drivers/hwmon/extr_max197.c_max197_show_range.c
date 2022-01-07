
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {int index; int nr; } ;
struct max197_data {int limit; int lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ERESTARTSYS ;
 struct max197_data* dev_get_drvdata (struct device*) ;
 scalar_t__ max197_is_bipolar (struct max197_data*,int) ;
 scalar_t__ max197_is_full_range (struct max197_data*,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t max197_show_range(struct device *dev,
     struct device_attribute *devattr, char *buf)
{
 struct max197_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute_2 *attr = to_sensor_dev_attr_2(devattr);
 int channel = attr->index;
 bool is_min = attr->nr;
 int range;

 if (mutex_lock_interruptible(&data->lock))
  return -ERESTARTSYS;

 range = max197_is_full_range(data, channel) ?
  data->limit : data->limit / 2;
 if (is_min) {
  if (max197_is_bipolar(data, channel))
   range = -range;
  else
   range = 0;
 }

 mutex_unlock(&data->lock);

 return sprintf(buf, "%d\n", range);
}
