
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct etm_drvdata {scalar_t__ cpu; int base; } ;
struct TYPE_2__ {int parent; } ;
struct coresight_device {TYPE_1__ dev; } ;


 int CS_LOCK (int ) ;
 int CS_UNLOCK (int ) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int coresight_disclaim_device_unlocked (int ) ;
 struct etm_drvdata* dev_get_drvdata (int ) ;
 int etm_set_prog (struct etm_drvdata*) ;
 int etm_set_pwrdwn (struct etm_drvdata*) ;
 scalar_t__ smp_processor_id () ;

__attribute__((used)) static void etm_disable_perf(struct coresight_device *csdev)
{
 struct etm_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);

 if (WARN_ON_ONCE(drvdata->cpu != smp_processor_id()))
  return;

 CS_UNLOCK(drvdata->base);


 etm_set_prog(drvdata);





 etm_set_pwrdwn(drvdata);
 coresight_disclaim_device_unlocked(drvdata->base);

 CS_LOCK(drvdata->base);
}
