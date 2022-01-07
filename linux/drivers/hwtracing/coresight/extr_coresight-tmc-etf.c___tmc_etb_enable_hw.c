
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmc_drvdata {int trigger_cntr; scalar_t__ base; } ;


 int CS_LOCK (scalar_t__) ;
 int CS_UNLOCK (scalar_t__) ;
 scalar_t__ TMC_FFCR ;
 int TMC_FFCR_EN_FMT ;
 int TMC_FFCR_EN_TI ;
 int TMC_FFCR_FON_FLIN ;
 int TMC_FFCR_FON_TRIG_EVT ;
 int TMC_FFCR_TRIGON_TRIGIN ;
 scalar_t__ TMC_MODE ;
 int TMC_MODE_CIRCULAR_BUFFER ;
 scalar_t__ TMC_TRG ;
 int tmc_enable_hw (struct tmc_drvdata*) ;
 int tmc_wait_for_tmcready (struct tmc_drvdata*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void __tmc_etb_enable_hw(struct tmc_drvdata *drvdata)
{
 CS_UNLOCK(drvdata->base);


 tmc_wait_for_tmcready(drvdata);

 writel_relaxed(TMC_MODE_CIRCULAR_BUFFER, drvdata->base + TMC_MODE);
 writel_relaxed(TMC_FFCR_EN_FMT | TMC_FFCR_EN_TI |
         TMC_FFCR_FON_FLIN | TMC_FFCR_FON_TRIG_EVT |
         TMC_FFCR_TRIGON_TRIGIN,
         drvdata->base + TMC_FFCR);

 writel_relaxed(drvdata->trigger_cntr, drvdata->base + TMC_TRG);
 tmc_enable_hw(drvdata);

 CS_LOCK(drvdata->base);
}
