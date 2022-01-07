
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmc_drvdata {scalar_t__ config_type; scalar_t__ mode; int reading; int spinlock; struct etr_buf* sysfs_buf; } ;
struct etr_buf {int dummy; } ;


 scalar_t__ CS_MODE_SYSFS ;
 int EINVAL ;
 scalar_t__ TMC_CONFIG_TYPE_ETR ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int __tmc_etr_enable_hw (struct tmc_drvdata*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tmc_etr_free_sysfs_buf (struct etr_buf*) ;

int tmc_read_unprepare_etr(struct tmc_drvdata *drvdata)
{
 unsigned long flags;
 struct etr_buf *sysfs_buf = ((void*)0);


 if (WARN_ON_ONCE(drvdata->config_type != TMC_CONFIG_TYPE_ETR))
  return -EINVAL;

 spin_lock_irqsave(&drvdata->spinlock, flags);


 if (drvdata->mode == CS_MODE_SYSFS) {





  __tmc_etr_enable_hw(drvdata);
 } else {




  sysfs_buf = drvdata->sysfs_buf;
  drvdata->sysfs_buf = ((void*)0);
 }

 drvdata->reading = 0;
 spin_unlock_irqrestore(&drvdata->spinlock, flags);


 if (sysfs_buf)
  tmc_etr_free_sysfs_buf(sysfs_buf);

 return 0;
}
