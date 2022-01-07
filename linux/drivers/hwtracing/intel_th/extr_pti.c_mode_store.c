
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pti_device {int mode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct pti_device* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int pti_width_mode (unsigned long) ;

__attribute__((used)) static ssize_t mode_store(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t size)
{
 struct pti_device *pti = dev_get_drvdata(dev);
 unsigned long val;
 int ret;

 ret = kstrtoul(buf, 10, &val);
 if (ret)
  return ret;

 ret = pti_width_mode(val);
 if (ret < 0)
  return ret;

 pti->mode = ret;

 return size;
}
