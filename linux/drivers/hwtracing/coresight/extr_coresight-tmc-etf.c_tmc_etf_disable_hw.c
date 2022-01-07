
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmc_drvdata {int base; } ;


 int CS_LOCK (int ) ;
 int CS_UNLOCK (int ) ;
 int coresight_disclaim_device_unlocked (int ) ;
 int tmc_disable_hw (struct tmc_drvdata*) ;
 int tmc_flush_and_stop (struct tmc_drvdata*) ;

__attribute__((used)) static void tmc_etf_disable_hw(struct tmc_drvdata *drvdata)
{
 CS_UNLOCK(drvdata->base);

 tmc_flush_and_stop(drvdata);
 tmc_disable_hw(drvdata);
 coresight_disclaim_device_unlocked(drvdata->base);
 CS_LOCK(drvdata->base);
}
