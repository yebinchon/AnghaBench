
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct etmv4_drvdata {int sticky_enable; int spinlock; int cpu; } ;
struct etm4_enable_arg {int rc; struct etmv4_drvdata* drvdata; int member_0; } ;
struct TYPE_2__ {int parent; } ;
struct coresight_device {TYPE_1__ dev; } ;


 int dev_dbg (TYPE_1__*,char*) ;
 struct etmv4_drvdata* dev_get_drvdata (int ) ;
 int etm4_enable_hw_smp_call ;
 int smp_call_function_single (int ,int ,struct etm4_enable_arg*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int etm4_enable_sysfs(struct coresight_device *csdev)
{
 struct etmv4_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
 struct etm4_enable_arg arg = { 0 };
 int ret;

 spin_lock(&drvdata->spinlock);





 arg.drvdata = drvdata;
 ret = smp_call_function_single(drvdata->cpu,
           etm4_enable_hw_smp_call, &arg, 1);
 if (!ret)
  ret = arg.rc;
 if (!ret)
  drvdata->sticky_enable = 1;
 spin_unlock(&drvdata->spinlock);

 if (!ret)
  dev_dbg(&csdev->dev, "ETM tracing enabled\n");
 return ret;
}
