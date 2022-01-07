
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm_drvdata {int mode; int base; int spinlock; } ;
struct perf_event {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct coresight_device {TYPE_1__ dev; } ;


 int CS_MODE_DISABLED ;
 scalar_t__ CS_MODE_SYSFS ;
 int STMTCSR ;
 int STMTCSR_BUSY_BIT ;
 int coresight_timeout (int ,int ,int ,int ) ;
 int dev_dbg (TYPE_1__*,char*) ;
 struct stm_drvdata* dev_get_drvdata (int ) ;
 scalar_t__ local_read (int *) ;
 int local_set (int *,int ) ;
 int pm_runtime_put (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stm_disable_hw (struct stm_drvdata*) ;

__attribute__((used)) static void stm_disable(struct coresight_device *csdev,
   struct perf_event *event)
{
 struct stm_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);






 if (local_read(&drvdata->mode) == CS_MODE_SYSFS) {
  spin_lock(&drvdata->spinlock);
  stm_disable_hw(drvdata);
  spin_unlock(&drvdata->spinlock);


  coresight_timeout(drvdata->base, STMTCSR, STMTCSR_BUSY_BIT, 0);

  pm_runtime_put(csdev->dev.parent);

  local_set(&drvdata->mode, CS_MODE_DISABLED);
  dev_dbg(&csdev->dev, "STM tracing disabled\n");
 }
}
