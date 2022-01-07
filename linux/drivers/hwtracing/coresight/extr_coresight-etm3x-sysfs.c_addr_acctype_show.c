
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etm_config {unsigned long* addr_acctype; size_t addr_idx; } ;
struct etm_drvdata {int spinlock; struct etm_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 struct etm_drvdata* dev_get_drvdata (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sprintf (char*,char*,unsigned long) ;

__attribute__((used)) static ssize_t addr_acctype_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 unsigned long val;
 struct etm_drvdata *drvdata = dev_get_drvdata(dev->parent);
 struct etm_config *config = &drvdata->config;

 spin_lock(&drvdata->spinlock);
 val = config->addr_acctype[config->addr_idx];
 spin_unlock(&drvdata->spinlock);

 return sprintf(buf, "%#lx\n", val);
}
