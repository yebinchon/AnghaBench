
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etm_config {unsigned long ctxid_idx; } ;
struct etm_drvdata {unsigned long nr_ctxid_cmp; int spinlock; struct etm_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct etm_drvdata* dev_get_drvdata (int ) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t ctxid_idx_store(struct device *dev,
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

 if (val >= drvdata->nr_ctxid_cmp)
  return -EINVAL;





 spin_lock(&drvdata->spinlock);
 config->ctxid_idx = val;
 spin_unlock(&drvdata->spinlock);

 return size;
}
