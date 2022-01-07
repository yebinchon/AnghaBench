
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void* u64 ;
struct etmv4_config {int addr_idx; scalar_t__* addr_type; int mode; void** addr_val; } ;
struct etmv4_drvdata {int spinlock; struct etmv4_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t EPERM ;
 scalar_t__ ETM_ADDR_TYPE_NONE ;
 scalar_t__ ETM_ADDR_TYPE_RANGE ;
 int ETM_MODE_EXCLUDE ;
 struct etmv4_drvdata* dev_get_drvdata (int ) ;
 int etm4_set_mode_exclude (struct etmv4_drvdata*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sscanf (char const*,char*,unsigned long*,unsigned long*) ;

__attribute__((used)) static ssize_t addr_range_store(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t size)
{
 u8 idx;
 unsigned long val1, val2;
 struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
 struct etmv4_config *config = &drvdata->config;

 if (sscanf(buf, "%lx %lx", &val1, &val2) != 2)
  return -EINVAL;

 if (val1 > val2)
  return -EINVAL;

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

 config->addr_val[idx] = (u64)val1;
 config->addr_type[idx] = ETM_ADDR_TYPE_RANGE;
 config->addr_val[idx + 1] = (u64)val2;
 config->addr_type[idx + 1] = ETM_ADDR_TYPE_RANGE;




 etm4_set_mode_exclude(drvdata,
         config->mode & ETM_MODE_EXCLUDE ? 1 : 0);

 spin_unlock(&drvdata->spinlock);
 return size;
}
