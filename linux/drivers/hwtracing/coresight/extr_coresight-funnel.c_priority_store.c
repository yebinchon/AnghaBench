
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct funnel_drvdata {unsigned long priority; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 struct funnel_drvdata* dev_get_drvdata (int ) ;
 int kstrtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t priority_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t size)
{
 int ret;
 unsigned long val;
 struct funnel_drvdata *drvdata = dev_get_drvdata(dev->parent);

 ret = kstrtoul(buf, 16, &val);
 if (ret)
  return ret;

 drvdata->priority = val;
 return size;
}
