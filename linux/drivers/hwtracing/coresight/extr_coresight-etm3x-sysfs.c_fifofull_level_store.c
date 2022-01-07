
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etm_config {unsigned long fifofull_level; } ;
struct etm_drvdata {struct etm_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 struct etm_drvdata* dev_get_drvdata (int ) ;
 int kstrtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t fifofull_level_store(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t size)
{
 int ret;
 unsigned long val;
 struct etm_drvdata *drvdata = dev_get_drvdata(dev->parent);
 struct etm_config *config = &drvdata->config;

 ret = kstrtoul(buf, 16, &val);
 if (ret)
  return ret;

 config->fifofull_level = val;

 return size;
}
