
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_drvdata {unsigned long stmhebsr; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 struct stm_drvdata* dev_get_drvdata (int ) ;
 int kstrtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t hwevent_select_store(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t size)
{
 struct stm_drvdata *drvdata = dev_get_drvdata(dev->parent);
 unsigned long val;
 int ret = 0;

 ret = kstrtoul(buf, 16, &val);
 if (ret)
  return -EINVAL;

 drvdata->stmhebsr = val;

 return size;
}
