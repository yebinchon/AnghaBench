
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct etmv4_drvdata {int cpu; TYPE_1__* csdev; scalar_t__ base; } ;
struct TYPE_2__ {int dev; } ;


 int CS_LOCK (scalar_t__) ;
 int CS_UNLOCK (scalar_t__) ;
 scalar_t__ TRCPDCR ;
 int TRCPDCR_PU ;
 scalar_t__ TRCPRGCTLR ;
 int coresight_disclaim_device_unlocked (scalar_t__) ;
 int dev_dbg (int *,char*,int ) ;
 int dsb (int ) ;
 int isb () ;
 int readl_relaxed (scalar_t__) ;
 int sy ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void etm4_disable_hw(void *info)
{
 u32 control;
 struct etmv4_drvdata *drvdata = info;

 CS_UNLOCK(drvdata->base);


 control = readl_relaxed(drvdata->base + TRCPDCR);
 control &= ~TRCPDCR_PU;
 writel_relaxed(control, drvdata->base + TRCPDCR);

 control = readl_relaxed(drvdata->base + TRCPRGCTLR);


 control &= ~0x1;






 dsb(sy);
 isb();
 writel_relaxed(control, drvdata->base + TRCPRGCTLR);

 coresight_disclaim_device_unlocked(drvdata->base);

 CS_LOCK(drvdata->base);

 dev_dbg(&drvdata->csdev->dev,
  "cpu: %d disable smp call done\n", drvdata->cpu);
}
