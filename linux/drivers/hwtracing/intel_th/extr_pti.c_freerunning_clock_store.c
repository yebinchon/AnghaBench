
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pti_device {int freeclk; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct pti_device* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t
freerunning_clock_store(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t size)
{
 struct pti_device *pti = dev_get_drvdata(dev);
 unsigned long val;
 int ret;

 ret = kstrtoul(buf, 10, &val);
 if (ret)
  return ret;

 pti->freeclk = !!val;

 return size;
}
