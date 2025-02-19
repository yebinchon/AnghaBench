
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct etm_config {int addr_idx; scalar_t__* addr_type; unsigned long* addr_val; } ;
struct etm_drvdata {int spinlock; struct etm_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int EPERM ;
 scalar_t__ ETM_ADDR_TYPE_NONE ;
 scalar_t__ ETM_ADDR_TYPE_RANGE ;
 struct etm_drvdata* dev_get_drvdata (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sprintf (char*,char*,unsigned long,unsigned long) ;

__attribute__((used)) static ssize_t addr_range_show(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 u8 idx;
 unsigned long val1, val2;
 struct etm_drvdata *drvdata = dev_get_drvdata(dev->parent);
 struct etm_config *config = &drvdata->config;

 spin_lock(&drvdata->spinlock);
 idx = config->addr_idx;
 if (idx % 2 != 0) {
  spin_unlock(&drvdata->spinlock);
  return -EPERM;
 }
 if (!((config->addr_type[idx] == ETM_ADDR_TYPE_NONE &&
        config->addr_type[idx + 1] == ETM_ADDR_TYPE_NONE) ||
       (config->addr_type[idx] == ETM_ADDR_TYPE_RANGE &&
        config->addr_type[idx + 1] == ETM_ADDR_TYPE_RANGE))) {
  spin_unlock(&drvdata->spinlock);
  return -EPERM;
 }

 val1 = config->addr_val[idx];
 val2 = config->addr_val[idx + 1];
 spin_unlock(&drvdata->spinlock);

 return sprintf(buf, "%#lx %#lx\n", val1, val2);
}
