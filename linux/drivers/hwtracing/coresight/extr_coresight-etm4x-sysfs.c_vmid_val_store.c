
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct etmv4_config {size_t vmid_idx; scalar_t__* vmid_val; } ;
struct etmv4_drvdata {int spinlock; int numvmidc; int vmid_size; struct etmv4_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 struct etmv4_drvdata* dev_get_drvdata (int ) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t vmid_val_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t size)
{
 unsigned long val;
 struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
 struct etmv4_config *config = &drvdata->config;





 if (!drvdata->vmid_size || !drvdata->numvmidc)
  return -EINVAL;
 if (kstrtoul(buf, 16, &val))
  return -EINVAL;

 spin_lock(&drvdata->spinlock);
 config->vmid_val[config->vmid_idx] = (u64)val;
 spin_unlock(&drvdata->spinlock);
 return size;
}
