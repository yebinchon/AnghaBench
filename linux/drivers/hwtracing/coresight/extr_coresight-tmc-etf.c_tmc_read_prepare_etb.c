
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmc_drvdata {scalar_t__ config_type; int reading; scalar_t__ mode; int spinlock; int * buf; scalar_t__ base; } ;
typedef enum tmc_mode { ____Placeholder_tmc_mode } tmc_mode ;


 scalar_t__ CS_MODE_PERF ;
 scalar_t__ CS_MODE_SYSFS ;
 int EBUSY ;
 int EINVAL ;
 scalar_t__ TMC_CONFIG_TYPE_ETB ;
 scalar_t__ TMC_CONFIG_TYPE_ETF ;
 scalar_t__ TMC_MODE ;
 int TMC_MODE_CIRCULAR_BUFFER ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int __tmc_etb_disable_hw (struct tmc_drvdata*) ;
 int readl_relaxed (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int tmc_read_prepare_etb(struct tmc_drvdata *drvdata)
{
 enum tmc_mode mode;
 int ret = 0;
 unsigned long flags;


 if (WARN_ON_ONCE(drvdata->config_type != TMC_CONFIG_TYPE_ETB &&
    drvdata->config_type != TMC_CONFIG_TYPE_ETF))
  return -EINVAL;

 spin_lock_irqsave(&drvdata->spinlock, flags);

 if (drvdata->reading) {
  ret = -EBUSY;
  goto out;
 }


 mode = readl_relaxed(drvdata->base + TMC_MODE);
 if (mode != TMC_MODE_CIRCULAR_BUFFER) {
  ret = -EINVAL;
  goto out;
 }


 if (drvdata->mode == CS_MODE_PERF) {
  ret = -EINVAL;
  goto out;
 }


 if (drvdata->buf == ((void*)0)) {
  ret = -EINVAL;
  goto out;
 }


 if (drvdata->mode == CS_MODE_SYSFS)
  __tmc_etb_disable_hw(drvdata);

 drvdata->reading = 1;
out:
 spin_unlock_irqrestore(&drvdata->spinlock, flags);

 return ret;
}
