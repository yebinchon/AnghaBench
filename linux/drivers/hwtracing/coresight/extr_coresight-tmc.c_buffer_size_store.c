
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmc_drvdata {scalar_t__ config_type; unsigned long size; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int EINVAL ;
 int EPERM ;
 int PAGE_SIZE ;
 scalar_t__ TMC_CONFIG_TYPE_ETR ;
 struct tmc_drvdata* dev_get_drvdata (int ) ;
 int kstrtoul (char const*,int ,unsigned long*) ;

__attribute__((used)) static ssize_t buffer_size_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t size)
{
 int ret;
 unsigned long val;
 struct tmc_drvdata *drvdata = dev_get_drvdata(dev->parent);


 if (drvdata->config_type != TMC_CONFIG_TYPE_ETR)
  return -EPERM;

 ret = kstrtoul(buf, 0, &val);
 if (ret)
  return ret;

 if (val & (PAGE_SIZE - 1))
  return -EINVAL;
 drvdata->size = val;
 return size;
}
