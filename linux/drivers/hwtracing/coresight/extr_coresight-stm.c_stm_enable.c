
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct stm_drvdata {int spinlock; int mode; } ;
struct perf_event {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct coresight_device {TYPE_1__ dev; } ;


 int CS_MODE_DISABLED ;
 scalar_t__ CS_MODE_SYSFS ;
 int EBUSY ;
 int EINVAL ;
 int dev_dbg (TYPE_1__*,char*) ;
 struct stm_drvdata* dev_get_drvdata (int ) ;
 scalar_t__ local_cmpxchg (int *,int ,scalar_t__) ;
 int pm_runtime_get_sync (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stm_enable_hw (struct stm_drvdata*) ;

__attribute__((used)) static int stm_enable(struct coresight_device *csdev,
        struct perf_event *event, u32 mode)
{
 u32 val;
 struct stm_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);

 if (mode != CS_MODE_SYSFS)
  return -EINVAL;

 val = local_cmpxchg(&drvdata->mode, CS_MODE_DISABLED, mode);


 if (val)
  return -EBUSY;

 pm_runtime_get_sync(csdev->dev.parent);

 spin_lock(&drvdata->spinlock);
 stm_enable_hw(drvdata);
 spin_unlock(&drvdata->spinlock);

 dev_dbg(&csdev->dev, "STM tracing enabled\n");
 return 0;
}
