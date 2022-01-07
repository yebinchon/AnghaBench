
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct aem_data {unsigned long* power_period; int lock; } ;
typedef int ssize_t ;


 unsigned long AEM_MIN_POWER_INTERVAL ;
 int EINVAL ;
 struct aem_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t aem_set_power_period(struct device *dev,
        struct device_attribute *devattr,
        const char *buf, size_t count)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct aem_data *a = dev_get_drvdata(dev);
 unsigned long temp;
 int res;

 res = kstrtoul(buf, 10, &temp);
 if (res)
  return res;

 if (temp < AEM_MIN_POWER_INTERVAL)
  return -EINVAL;

 mutex_lock(&a->lock);
 a->power_period[attr->index] = temp;
 mutex_unlock(&a->lock);

 return count;
}
