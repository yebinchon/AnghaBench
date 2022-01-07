
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct etmv4_config {size_t addr_idx; int* addr_acc; } ;
struct etmv4_drvdata {int numcidc; int numvmidc; int spinlock; struct etmv4_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef size_t ssize_t ;


 int BIT (int) ;
 size_t EINVAL ;
 struct etmv4_drvdata* dev_get_drvdata (int ) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t addr_context_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t size)
{
 u8 idx;
 unsigned long val;
 struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
 struct etmv4_config *config = &drvdata->config;

 if (kstrtoul(buf, 16, &val))
  return -EINVAL;
 if ((drvdata->numcidc <= 1) && (drvdata->numvmidc <= 1))
  return -EINVAL;
 if (val >= (drvdata->numcidc >= drvdata->numvmidc ?
       drvdata->numcidc : drvdata->numvmidc))
  return -EINVAL;

 spin_lock(&drvdata->spinlock);
 idx = config->addr_idx;

 config->addr_acc[idx] &= ~(BIT(4) | BIT(5) | BIT(6));
 config->addr_acc[idx] |= (val << 4);
 spin_unlock(&drvdata->spinlock);
 return size;
}
