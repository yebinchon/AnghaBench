
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmc_drvdata {scalar_t__ config_type; scalar_t__ mode; char* buf; int reading; int spinlock; int size; scalar_t__ base; } ;
typedef enum tmc_mode { ____Placeholder_tmc_mode } tmc_mode ;


 scalar_t__ CS_MODE_SYSFS ;
 int EINVAL ;
 scalar_t__ TMC_CONFIG_TYPE_ETB ;
 scalar_t__ TMC_CONFIG_TYPE_ETF ;
 scalar_t__ TMC_MODE ;
 int TMC_MODE_CIRCULAR_BUFFER ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int __tmc_etb_enable_hw (struct tmc_drvdata*) ;
 int kfree (char*) ;
 int memset (char*,int ,int ) ;
 int readl_relaxed (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int tmc_read_unprepare_etb(struct tmc_drvdata *drvdata)
{
 char *buf = ((void*)0);
 enum tmc_mode mode;
 unsigned long flags;


 if (WARN_ON_ONCE(drvdata->config_type != TMC_CONFIG_TYPE_ETB &&
    drvdata->config_type != TMC_CONFIG_TYPE_ETF))
  return -EINVAL;

 spin_lock_irqsave(&drvdata->spinlock, flags);


 mode = readl_relaxed(drvdata->base + TMC_MODE);
 if (mode != TMC_MODE_CIRCULAR_BUFFER) {
  spin_unlock_irqrestore(&drvdata->spinlock, flags);
  return -EINVAL;
 }


 if (drvdata->mode == CS_MODE_SYSFS) {
  memset(drvdata->buf, 0, drvdata->size);
  __tmc_etb_enable_hw(drvdata);
 } else {




  buf = drvdata->buf;
  drvdata->buf = ((void*)0);
 }

 drvdata->reading = 0;
 spin_unlock_irqrestore(&drvdata->spinlock, flags);





 kfree(buf);

 return 0;
}
