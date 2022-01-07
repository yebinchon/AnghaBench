
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct etb_drvdata {scalar_t__ mode; int spinlock; } ;
struct TYPE_2__ {int parent; } ;
struct coresight_device {int refcnt; TYPE_1__ dev; } ;


 scalar_t__ CS_MODE_DISABLED ;
 scalar_t__ CS_MODE_PERF ;
 scalar_t__ CS_MODE_SYSFS ;
 int EBUSY ;
 int atomic_inc (int ) ;
 struct etb_drvdata* dev_get_drvdata (int ) ;
 int etb_enable_hw (struct etb_drvdata*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int etb_enable_sysfs(struct coresight_device *csdev)
{
 int ret = 0;
 unsigned long flags;
 struct etb_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);

 spin_lock_irqsave(&drvdata->spinlock, flags);


 if (drvdata->mode == CS_MODE_PERF) {
  ret = -EBUSY;
  goto out;
 }

 if (drvdata->mode == CS_MODE_DISABLED) {
  ret = etb_enable_hw(drvdata);
  if (ret)
   goto out;

  drvdata->mode = CS_MODE_SYSFS;
 }

 atomic_inc(csdev->refcnt);
out:
 spin_unlock_irqrestore(&drvdata->spinlock, flags);
 return ret;
}
