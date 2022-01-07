
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef scalar_t__ u64 ;
struct etmv4_config {size_t addr_idx; scalar_t__* addr_type; scalar_t__* addr_val; } ;
struct etmv4_drvdata {int spinlock; struct etmv4_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t EPERM ;
 scalar_t__ ETM_ADDR_TYPE_NONE ;
 scalar_t__ ETM_ADDR_TYPE_SINGLE ;
 struct etmv4_drvdata* dev_get_drvdata (int ) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t addr_single_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t size)
{
 u8 idx;
 unsigned long val;
 struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
 struct etmv4_config *config = &drvdata->config;

 if (kstrtoul(buf, 16, &val))
  return -EINVAL;

 spin_lock(&drvdata->spinlock);
 idx = config->addr_idx;
 if (!(config->addr_type[idx] == ETM_ADDR_TYPE_NONE ||
       config->addr_type[idx] == ETM_ADDR_TYPE_SINGLE)) {
  spin_unlock(&drvdata->spinlock);
  return -EPERM;
 }

 config->addr_val[idx] = (u64)val;
 config->addr_type[idx] = ETM_ADDR_TYPE_SINGLE;
 spin_unlock(&drvdata->spinlock);
 return size;
}
