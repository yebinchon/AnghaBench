
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmc_drvdata {scalar_t__ base; } ;


 scalar_t__ TMC_CTL ;
 int writel_relaxed (int,scalar_t__) ;

void tmc_disable_hw(struct tmc_drvdata *drvdata)
{
 writel_relaxed(0x0, drvdata->base + TMC_CTL);
}
