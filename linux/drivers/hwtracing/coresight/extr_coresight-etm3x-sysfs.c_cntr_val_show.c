
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct etm_config {int* cntr_val; } ;
struct etm_drvdata {int nr_cntr; int spinlock; int mode; struct etm_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int ETMCNTVRn (int) ;
 struct etm_drvdata* dev_get_drvdata (int ) ;
 int etm_readl (struct etm_drvdata*,int ) ;
 int local_read (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ sprintf (char*,char*,int,int) ;

__attribute__((used)) static ssize_t cntr_val_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 int i, ret = 0;
 u32 val;
 struct etm_drvdata *drvdata = dev_get_drvdata(dev->parent);
 struct etm_config *config = &drvdata->config;

 if (!local_read(&drvdata->mode)) {
  spin_lock(&drvdata->spinlock);
  for (i = 0; i < drvdata->nr_cntr; i++)
   ret += sprintf(buf, "counter %d: %x\n",
           i, config->cntr_val[i]);
  spin_unlock(&drvdata->spinlock);
  return ret;
 }

 for (i = 0; i < drvdata->nr_cntr; i++) {
  val = etm_readl(drvdata, ETMCNTVRn(i));
  ret += sprintf(buf, "counter %d: %x\n", i, val);
 }

 return ret;
}
