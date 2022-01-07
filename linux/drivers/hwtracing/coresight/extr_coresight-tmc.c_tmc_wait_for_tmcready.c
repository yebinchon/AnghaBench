
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmc_drvdata {TYPE_1__* csdev; int base; } ;
struct TYPE_2__ {int dev; } ;


 int TMC_STS ;
 int TMC_STS_TMCREADY_BIT ;
 scalar_t__ coresight_timeout (int ,int ,int ,int) ;
 int dev_err (int *,char*) ;

void tmc_wait_for_tmcready(struct tmc_drvdata *drvdata)
{

 if (coresight_timeout(drvdata->base,
         TMC_STS, TMC_STS_TMCREADY_BIT, 1)) {
  dev_err(&drvdata->csdev->dev,
   "timeout while waiting for TMC to be Ready\n");
 }
}
