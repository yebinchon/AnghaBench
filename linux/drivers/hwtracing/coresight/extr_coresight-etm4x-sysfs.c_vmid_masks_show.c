
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etmv4_config {unsigned long vmid_mask0; unsigned long vmid_mask1; } ;
struct etmv4_drvdata {int spinlock; struct etmv4_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct etmv4_drvdata* dev_get_drvdata (int ) ;
 int scnprintf (char*,int ,char*,unsigned long,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t vmid_masks_show(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 unsigned long val1, val2;
 struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
 struct etmv4_config *config = &drvdata->config;

 spin_lock(&drvdata->spinlock);
 val1 = config->vmid_mask0;
 val2 = config->vmid_mask1;
 spin_unlock(&drvdata->spinlock);
 return scnprintf(buf, PAGE_SIZE, "%#lx %#lx\n", val1, val2);
}
