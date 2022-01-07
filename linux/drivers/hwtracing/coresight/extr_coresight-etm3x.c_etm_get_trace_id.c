
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct etm_drvdata {int traceid; int spinlock; int base; int mode; TYPE_2__* csdev; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int CS_LOCK (int ) ;
 int CS_UNLOCK (int ) ;
 int ETMTRACEIDR ;
 int ETM_TRACEID_MASK ;
 int etm_readl (struct etm_drvdata*,int ) ;
 int local_read (int *) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put (struct device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int etm_get_trace_id(struct etm_drvdata *drvdata)
{
 unsigned long flags;
 int trace_id = -1;
 struct device *etm_dev;

 if (!drvdata)
  goto out;

 etm_dev = drvdata->csdev->dev.parent;
 if (!local_read(&drvdata->mode))
  return drvdata->traceid;

 pm_runtime_get_sync(etm_dev);

 spin_lock_irqsave(&drvdata->spinlock, flags);

 CS_UNLOCK(drvdata->base);
 trace_id = (etm_readl(drvdata, ETMTRACEIDR) & ETM_TRACEID_MASK);
 CS_LOCK(drvdata->base);

 spin_unlock_irqrestore(&drvdata->spinlock, flags);
 pm_runtime_put(etm_dev);

out:
 return trace_id;

}
