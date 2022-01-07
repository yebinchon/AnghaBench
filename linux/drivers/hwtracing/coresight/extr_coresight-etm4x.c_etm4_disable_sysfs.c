
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct etmv4_drvdata {int spinlock; int cpu; } ;
struct TYPE_2__ {int parent; } ;
struct coresight_device {TYPE_1__ dev; } ;


 int cpus_read_lock () ;
 int cpus_read_unlock () ;
 int dev_dbg (TYPE_1__*,char*) ;
 struct etmv4_drvdata* dev_get_drvdata (int ) ;
 int etm4_disable_hw ;
 int smp_call_function_single (int ,int ,struct etmv4_drvdata*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void etm4_disable_sysfs(struct coresight_device *csdev)
{
 struct etmv4_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);







 cpus_read_lock();
 spin_lock(&drvdata->spinlock);





 smp_call_function_single(drvdata->cpu, etm4_disable_hw, drvdata, 1);

 spin_unlock(&drvdata->spinlock);
 cpus_read_unlock();

 dev_dbg(&csdev->dev, "ETM tracing disabled\n");
}
