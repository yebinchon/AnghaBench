
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmc_drvdata {scalar_t__ mode; int pid; int spinlock; int * perf_buf; scalar_t__ reading; } ;
struct TYPE_2__ {int parent; } ;
struct coresight_device {TYPE_1__ dev; int refcnt; } ;


 scalar_t__ CS_MODE_DISABLED ;
 int EBUSY ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ atomic_dec_return (int ) ;
 int dev_dbg (TYPE_1__*,char*) ;
 struct tmc_drvdata* dev_get_drvdata (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tmc_etr_disable_hw (struct tmc_drvdata*) ;

__attribute__((used)) static int tmc_disable_etr_sink(struct coresight_device *csdev)
{
 unsigned long flags;
 struct tmc_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);

 spin_lock_irqsave(&drvdata->spinlock, flags);

 if (drvdata->reading) {
  spin_unlock_irqrestore(&drvdata->spinlock, flags);
  return -EBUSY;
 }

 if (atomic_dec_return(csdev->refcnt)) {
  spin_unlock_irqrestore(&drvdata->spinlock, flags);
  return -EBUSY;
 }


 WARN_ON_ONCE(drvdata->mode == CS_MODE_DISABLED);
 tmc_etr_disable_hw(drvdata);

 drvdata->pid = -1;
 drvdata->mode = CS_MODE_DISABLED;

 drvdata->perf_buf = ((void*)0);

 spin_unlock_irqrestore(&drvdata->spinlock, flags);

 dev_dbg(&csdev->dev, "TMC-ETR disabled\n");
 return 0;
}
