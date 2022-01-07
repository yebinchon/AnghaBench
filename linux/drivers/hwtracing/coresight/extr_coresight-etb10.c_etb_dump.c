
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct etb_drvdata {scalar_t__ mode; TYPE_1__* csdev; int spinlock; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ CS_MODE_SYSFS ;
 int __etb_disable_hw (struct etb_drvdata*) ;
 int __etb_enable_hw (struct etb_drvdata*) ;
 int dev_dbg (int *,char*) ;
 int etb_dump_hw (struct etb_drvdata*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void etb_dump(struct etb_drvdata *drvdata)
{
 unsigned long flags;

 spin_lock_irqsave(&drvdata->spinlock, flags);
 if (drvdata->mode == CS_MODE_SYSFS) {
  __etb_disable_hw(drvdata);
  etb_dump_hw(drvdata);
  __etb_enable_hw(drvdata);
 }
 spin_unlock_irqrestore(&drvdata->spinlock, flags);

 dev_dbg(&drvdata->csdev->dev, "ETB dumped\n");
}
