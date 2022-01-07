
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etm_config {int * addr_type; int trigger_event; int mode; } ;
struct etm_drvdata {int nr_addr_cmp; int spinlock; struct etm_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int ETM_ADDR_TYPE_NONE ;
 int ETM_DEFAULT_EVENT_VAL ;
 int ETM_MODE_EXCLUDE ;
 struct etm_drvdata* dev_get_drvdata (int ) ;
 int etm_set_default (struct etm_config*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int memset (struct etm_config*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t reset_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t size)
{
 int i, ret;
 unsigned long val;
 struct etm_drvdata *drvdata = dev_get_drvdata(dev->parent);
 struct etm_config *config = &drvdata->config;

 ret = kstrtoul(buf, 16, &val);
 if (ret)
  return ret;

 if (val) {
  spin_lock(&drvdata->spinlock);
  memset(config, 0, sizeof(struct etm_config));
  config->mode = ETM_MODE_EXCLUDE;
  config->trigger_event = ETM_DEFAULT_EVENT_VAL;
  for (i = 0; i < drvdata->nr_addr_cmp; i++) {
   config->addr_type[i] = ETM_ADDR_TYPE_NONE;
  }

  etm_set_default(config);
  spin_unlock(&drvdata->spinlock);
 }

 return size;
}
