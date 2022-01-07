
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etm_config {unsigned long mode; int ctrl; int enable_ctrl1; } ;
struct etm_drvdata {int etmccr; int etmccer; int spinlock; struct etm_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ETMCCER_TIMESTAMP ;
 int ETMCCR_FIFOFULL ;
 int ETMCR_BRANCH_BROADCAST ;
 int ETMCR_CTXID_SIZE ;
 int ETMCR_CYC_ACC ;
 int ETMCR_RETURN_STACK ;
 int ETMCR_STALL_MODE ;
 int ETMCR_TIMESTAMP_EN ;
 int ETMTECR1_INC_EXC ;
 unsigned long ETM_MODE_ALL ;
 int ETM_MODE_BBROAD ;
 int ETM_MODE_CTXID ;
 int ETM_MODE_CYCACC ;
 int ETM_MODE_EXCLUDE ;
 int ETM_MODE_EXCL_KERN ;
 int ETM_MODE_EXCL_USER ;
 int ETM_MODE_RET_STACK ;
 int ETM_MODE_STALL ;
 int ETM_MODE_TIMESTAMP ;
 struct etm_drvdata* dev_get_drvdata (int ) ;
 int dev_warn (struct device*,char*) ;
 int etm_config_trace_mode (struct etm_config*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t mode_store(struct device *dev,
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
 config->mode = val & ETM_MODE_ALL;

 if (config->mode & ETM_MODE_EXCLUDE)
  config->enable_ctrl1 |= ETMTECR1_INC_EXC;
 else
  config->enable_ctrl1 &= ~ETMTECR1_INC_EXC;

 if (config->mode & ETM_MODE_CYCACC)
  config->ctrl |= ETMCR_CYC_ACC;
 else
  config->ctrl &= ~ETMCR_CYC_ACC;

 if (config->mode & ETM_MODE_STALL) {
  if (!(drvdata->etmccr & ETMCCR_FIFOFULL)) {
   dev_warn(dev, "stall mode not supported\n");
   ret = -EINVAL;
   goto err_unlock;
  }
  config->ctrl |= ETMCR_STALL_MODE;
 } else
  config->ctrl &= ~ETMCR_STALL_MODE;

 if (config->mode & ETM_MODE_TIMESTAMP) {
  if (!(drvdata->etmccer & ETMCCER_TIMESTAMP)) {
   dev_warn(dev, "timestamp not supported\n");
   ret = -EINVAL;
   goto err_unlock;
  }
  config->ctrl |= ETMCR_TIMESTAMP_EN;
 } else
  config->ctrl &= ~ETMCR_TIMESTAMP_EN;

 if (config->mode & ETM_MODE_CTXID)
  config->ctrl |= ETMCR_CTXID_SIZE;
 else
  config->ctrl &= ~ETMCR_CTXID_SIZE;

 if (config->mode & ETM_MODE_BBROAD)
  config->ctrl |= ETMCR_BRANCH_BROADCAST;
 else
  config->ctrl &= ~ETMCR_BRANCH_BROADCAST;

 if (config->mode & ETM_MODE_RET_STACK)
  config->ctrl |= ETMCR_RETURN_STACK;
 else
  config->ctrl &= ~ETMCR_RETURN_STACK;

 if (config->mode & (ETM_MODE_EXCL_KERN | ETM_MODE_EXCL_USER))
  etm_config_trace_mode(config);

 spin_unlock(&drvdata->spinlock);

 return size;

err_unlock:
 spin_unlock(&drvdata->spinlock);
 return ret;
}
