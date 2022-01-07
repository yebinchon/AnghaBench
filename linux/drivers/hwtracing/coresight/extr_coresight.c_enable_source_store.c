
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct coresight_device {int dummy; } ;
typedef int ssize_t ;


 int coresight_disable (struct coresight_device*) ;
 int coresight_enable (struct coresight_device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 struct coresight_device* to_coresight_device (struct device*) ;

__attribute__((used)) static ssize_t enable_source_store(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t size)
{
 int ret = 0;
 unsigned long val;
 struct coresight_device *csdev = to_coresight_device(dev);

 ret = kstrtoul(buf, 10, &val);
 if (ret)
  return ret;

 if (val) {
  ret = coresight_enable(csdev);
  if (ret)
   return ret;
 } else {
  coresight_disable(csdev);
 }

 return size;
}
