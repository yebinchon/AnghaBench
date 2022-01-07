
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmc_drvdata {scalar_t__ base; } ;


 int CS_LOCK (scalar_t__) ;
 int CS_UNLOCK (scalar_t__) ;
 scalar_t__ TMC_BUFWM ;
 scalar_t__ TMC_FFCR ;
 int TMC_FFCR_EN_FMT ;
 int TMC_FFCR_EN_TI ;
 scalar_t__ TMC_MODE ;
 int TMC_MODE_HARDWARE_FIFO ;
 int tmc_enable_hw (struct tmc_drvdata*) ;
 int tmc_wait_for_tmcready (struct tmc_drvdata*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void __tmc_etf_enable_hw(struct tmc_drvdata *drvdata)
{
 CS_UNLOCK(drvdata->base);


 tmc_wait_for_tmcready(drvdata);

 writel_relaxed(TMC_MODE_HARDWARE_FIFO, drvdata->base + TMC_MODE);
 writel_relaxed(TMC_FFCR_EN_FMT | TMC_FFCR_EN_TI,
         drvdata->base + TMC_FFCR);
 writel_relaxed(0x0, drvdata->base + TMC_BUFWM);
 tmc_enable_hw(drvdata);

 CS_LOCK(drvdata->base);
}
