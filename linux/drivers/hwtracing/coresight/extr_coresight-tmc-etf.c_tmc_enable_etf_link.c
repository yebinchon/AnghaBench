
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmc_drvdata {int spinlock; int mode; scalar_t__ reading; } ;
struct TYPE_2__ {int parent; } ;
struct coresight_device {TYPE_1__ dev; } ;


 int CS_MODE_SYSFS ;
 int EBUSY ;
 int dev_dbg (TYPE_1__*,char*) ;
 struct tmc_drvdata* dev_get_drvdata (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tmc_etf_enable_hw (struct tmc_drvdata*) ;

__attribute__((used)) static int tmc_enable_etf_link(struct coresight_device *csdev,
          int inport, int outport)
{
 int ret;
 unsigned long flags;
 struct tmc_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);

 spin_lock_irqsave(&drvdata->spinlock, flags);
 if (drvdata->reading) {
  spin_unlock_irqrestore(&drvdata->spinlock, flags);
  return -EBUSY;
 }

 ret = tmc_etf_enable_hw(drvdata);
 if (!ret)
  drvdata->mode = CS_MODE_SYSFS;
 spin_unlock_irqrestore(&drvdata->spinlock, flags);

 if (!ret)
  dev_dbg(&csdev->dev, "TMC-ETF enabled\n");
 return ret;
}
