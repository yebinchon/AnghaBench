
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etb_drvdata {unsigned long trigger_cntr; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 struct etb_drvdata* dev_get_drvdata (int ) ;
 int kstrtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t trigger_cntr_store(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t size)
{
 int ret;
 unsigned long val;
 struct etb_drvdata *drvdata = dev_get_drvdata(dev->parent);

 ret = kstrtoul(buf, 16, &val);
 if (ret)
  return ret;

 drvdata->trigger_cntr = val;
 return size;
}
