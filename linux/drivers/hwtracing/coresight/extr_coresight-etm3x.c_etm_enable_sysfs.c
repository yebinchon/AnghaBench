
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct etm_enable_arg {int rc; struct etm_drvdata* drvdata; int member_0; } ;
struct etm_drvdata {int sticky_enable; int spinlock; int cpu; } ;
struct TYPE_2__ {int parent; } ;
struct coresight_device {TYPE_1__ dev; } ;


 int ENODEV ;
 scalar_t__ cpu_online (int ) ;
 int dev_dbg (TYPE_1__*,char*) ;
 struct etm_drvdata* dev_get_drvdata (int ) ;
 int etm_enable_hw_smp_call ;
 int smp_call_function_single (int ,int ,struct etm_enable_arg*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int etm_enable_sysfs(struct coresight_device *csdev)
{
 struct etm_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
 struct etm_enable_arg arg = { 0 };
 int ret;

 spin_lock(&drvdata->spinlock);





 if (cpu_online(drvdata->cpu)) {
  arg.drvdata = drvdata;
  ret = smp_call_function_single(drvdata->cpu,
            etm_enable_hw_smp_call, &arg, 1);
  if (!ret)
   ret = arg.rc;
  if (!ret)
   drvdata->sticky_enable = 1;
 } else {
  ret = -ENODEV;
 }

 spin_unlock(&drvdata->spinlock);

 if (!ret)
  dev_dbg(&csdev->dev, "ETM tracing enabled\n");
 return ret;
}
