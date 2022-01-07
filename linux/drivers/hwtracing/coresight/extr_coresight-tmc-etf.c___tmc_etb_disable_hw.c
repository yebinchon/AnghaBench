
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmc_drvdata {scalar_t__ mode; int base; } ;


 int CS_LOCK (int ) ;
 scalar_t__ CS_MODE_SYSFS ;
 int CS_UNLOCK (int ) ;
 int tmc_disable_hw (struct tmc_drvdata*) ;
 int tmc_etb_dump_hw (struct tmc_drvdata*) ;
 int tmc_flush_and_stop (struct tmc_drvdata*) ;

__attribute__((used)) static void __tmc_etb_disable_hw(struct tmc_drvdata *drvdata)
{
 CS_UNLOCK(drvdata->base);

 tmc_flush_and_stop(drvdata);




 if (drvdata->mode == CS_MODE_SYSFS)
  tmc_etb_dump_hw(drvdata);
 tmc_disable_hw(drvdata);

 CS_LOCK(drvdata->base);
}
