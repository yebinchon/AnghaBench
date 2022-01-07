
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etm_config {unsigned long seq_curr_state; } ;
struct etm_drvdata {int spinlock; int base; int mode; struct etm_config config; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int CS_LOCK (int ) ;
 int CS_UNLOCK (int ) ;
 int ETMSQR ;
 unsigned long ETM_SQR_MASK ;
 struct etm_drvdata* dev_get_drvdata (int ) ;
 unsigned long etm_readl (struct etm_drvdata*,int ) ;
 int local_read (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sprintf (char*,char*,unsigned long) ;

__attribute__((used)) static ssize_t seq_curr_state_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 unsigned long val, flags;
 struct etm_drvdata *drvdata = dev_get_drvdata(dev->parent);
 struct etm_config *config = &drvdata->config;

 if (!local_read(&drvdata->mode)) {
  val = config->seq_curr_state;
  goto out;
 }

 pm_runtime_get_sync(dev->parent);
 spin_lock_irqsave(&drvdata->spinlock, flags);

 CS_UNLOCK(drvdata->base);
 val = (etm_readl(drvdata, ETMSQR) & ETM_SQR_MASK);
 CS_LOCK(drvdata->base);

 spin_unlock_irqrestore(&drvdata->spinlock, flags);
 pm_runtime_put(dev->parent);
out:
 return sprintf(buf, "%#lx\n", val);
}
