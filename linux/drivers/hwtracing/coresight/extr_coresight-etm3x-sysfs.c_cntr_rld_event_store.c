
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etm_config {unsigned long* cntr_rld_event; size_t cntr_idx; } ;
struct etm_drvdata {int spinlock; struct etm_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 unsigned long ETM_EVENT_MASK ;
 struct etm_drvdata* dev_get_drvdata (int ) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t cntr_rld_event_store(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t size)
{
 int ret;
 unsigned long val;
 struct etm_drvdata *drvdata = dev_get_drvdata(dev->parent);
 struct etm_config *config = &drvdata->config;

 ret = kstrtoul(buf, 16, &val);
 if (ret)
  return ret;

 spin_lock(&drvdata->spinlock);
 config->cntr_rld_event[config->cntr_idx] = val & ETM_EVENT_MASK;
 spin_unlock(&drvdata->spinlock);

 return size;
}
