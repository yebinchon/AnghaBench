
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int iio_sysfs_trigger_remove (unsigned long) ;
 int kstrtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t iio_sysfs_trig_remove(struct device *dev,
         struct device_attribute *attr,
         const char *buf,
         size_t len)
{
 int ret;
 unsigned long input;

 ret = kstrtoul(buf, 10, &input);
 if (ret)
  return ret;
 ret = iio_sysfs_trigger_remove(input);
 if (ret)
  return ret;
 return len;
}
