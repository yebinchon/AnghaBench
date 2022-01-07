
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct etmv4_config {int addr_idx; scalar_t__* addr_type; scalar_t__* addr_val; } ;
struct etmv4_drvdata {int spinlock; struct etmv4_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int EPERM ;
 scalar_t__ ETM_ADDR_TYPE_NONE ;
 scalar_t__ ETM_ADDR_TYPE_RANGE ;
 int PAGE_SIZE ;
 struct etmv4_drvdata* dev_get_drvdata (int ) ;
 int scnprintf (char*,int ,char*,unsigned long,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t addr_range_show(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 u8 idx;
 unsigned long val1, val2;
 struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
 struct etmv4_config *config = &drvdata->config;

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

 val1 = (unsigned long)config->addr_val[idx];
 val2 = (unsigned long)config->addr_val[idx + 1];
 spin_unlock(&drvdata->spinlock);
 return scnprintf(buf, PAGE_SIZE, "%#lx %#lx\n", val1, val2);
}
