
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct abx500_temp {unsigned long* max; int lock; } ;
typedef int ssize_t ;


 int DEFAULT_MAX_TEMP ;
 unsigned long clamp_val (unsigned long,int ,int ) ;
 struct abx500_temp* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int threshold_updated (struct abx500_temp*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t max_store(struct device *dev, struct device_attribute *devattr,
    const char *buf, size_t count)
{
 unsigned long val;
 struct abx500_temp *data = dev_get_drvdata(dev);
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 int res = kstrtol(buf, 10, &val);
 if (res < 0)
  return res;

 val = clamp_val(val, 0, DEFAULT_MAX_TEMP);

 mutex_lock(&data->lock);
 data->max[attr->index] = val;
 threshold_updated(data);
 mutex_unlock(&data->lock);

 return count;
}
