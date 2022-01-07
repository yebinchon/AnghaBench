
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tmc_drvdata {TYPE_1__* csdev; scalar_t__ base; } ;
struct TYPE_2__ {int dev; } ;


 int BIT (int ) ;
 scalar_t__ TMC_FFCR ;
 int TMC_FFCR_FLUSHMAN_BIT ;
 int TMC_FFCR_STOP_ON_FLUSH ;
 scalar_t__ coresight_timeout (scalar_t__,scalar_t__,int ,int ) ;
 int dev_err (int *,char*) ;
 int readl_relaxed (scalar_t__) ;
 int tmc_wait_for_tmcready (struct tmc_drvdata*) ;
 int writel_relaxed (int ,scalar_t__) ;

void tmc_flush_and_stop(struct tmc_drvdata *drvdata)
{
 u32 ffcr;

 ffcr = readl_relaxed(drvdata->base + TMC_FFCR);
 ffcr |= TMC_FFCR_STOP_ON_FLUSH;
 writel_relaxed(ffcr, drvdata->base + TMC_FFCR);
 ffcr |= BIT(TMC_FFCR_FLUSHMAN_BIT);
 writel_relaxed(ffcr, drvdata->base + TMC_FFCR);

 if (coresight_timeout(drvdata->base,
         TMC_FFCR, TMC_FFCR_FLUSHMAN_BIT, 0)) {
  dev_err(&drvdata->csdev->dev,
  "timeout while waiting for completion of Manual Flush\n");
 }

 tmc_wait_for_tmcready(drvdata);
}
