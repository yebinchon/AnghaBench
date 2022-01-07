
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct etb_drvdata {scalar_t__ mode; int pid; int spinlock; } ;
struct TYPE_2__ {int parent; } ;
struct coresight_device {TYPE_1__ dev; int refcnt; } ;


 scalar_t__ CS_MODE_DISABLED ;
 int EBUSY ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ atomic_dec_return (int ) ;
 int dev_dbg (TYPE_1__*,char*) ;
 struct etb_drvdata* dev_get_drvdata (int ) ;
 int etb_disable_hw (struct etb_drvdata*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int etb_disable(struct coresight_device *csdev)
{
 struct etb_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
 unsigned long flags;

 spin_lock_irqsave(&drvdata->spinlock, flags);

 if (atomic_dec_return(csdev->refcnt)) {
  spin_unlock_irqrestore(&drvdata->spinlock, flags);
  return -EBUSY;
 }


 WARN_ON_ONCE(drvdata->mode == CS_MODE_DISABLED);
 etb_disable_hw(drvdata);

 drvdata->pid = -1;
 drvdata->mode = CS_MODE_DISABLED;
 spin_unlock_irqrestore(&drvdata->spinlock, flags);

 dev_dbg(&csdev->dev, "ETB disabled\n");
 return 0;
}
