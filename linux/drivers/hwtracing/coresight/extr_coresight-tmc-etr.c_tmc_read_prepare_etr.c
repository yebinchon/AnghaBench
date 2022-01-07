
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmc_drvdata {scalar_t__ config_type; int reading; scalar_t__ mode; int spinlock; int sysfs_buf; } ;


 scalar_t__ CS_MODE_SYSFS ;
 int EBUSY ;
 int EINVAL ;
 scalar_t__ TMC_CONFIG_TYPE_ETR ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int __tmc_etr_disable_hw (struct tmc_drvdata*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int tmc_read_prepare_etr(struct tmc_drvdata *drvdata)
{
 int ret = 0;
 unsigned long flags;


 if (WARN_ON_ONCE(drvdata->config_type != TMC_CONFIG_TYPE_ETR))
  return -EINVAL;

 spin_lock_irqsave(&drvdata->spinlock, flags);
 if (drvdata->reading) {
  ret = -EBUSY;
  goto out;
 }






 if (!drvdata->sysfs_buf) {
  ret = -EINVAL;
  goto out;
 }


 if (drvdata->mode == CS_MODE_SYSFS)
  __tmc_etr_disable_hw(drvdata);

 drvdata->reading = 1;
out:
 spin_unlock_irqrestore(&drvdata->spinlock, flags);

 return ret;
}
