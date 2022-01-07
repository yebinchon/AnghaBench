
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct etmv4_config {size_t addr_idx; int* addr_acc; } ;
struct etmv4_drvdata {int spinlock; struct etmv4_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef size_t ssize_t ;


 int BIT (int) ;
 size_t EINVAL ;
 struct etmv4_drvdata* dev_get_drvdata (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sscanf (char const*,char*,char*) ;
 int strcmp (char*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static ssize_t addr_instdatatype_store(struct device *dev,
           struct device_attribute *attr,
           const char *buf, size_t size)
{
 u8 idx;
 char str[20] = "";
 struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
 struct etmv4_config *config = &drvdata->config;

 if (strlen(buf) >= 20)
  return -EINVAL;
 if (sscanf(buf, "%s", str) != 1)
  return -EINVAL;

 spin_lock(&drvdata->spinlock);
 idx = config->addr_idx;
 if (!strcmp(str, "instr"))

  config->addr_acc[idx] &= ~(BIT(0) | BIT(1));

 spin_unlock(&drvdata->spinlock);
 return size;
}
