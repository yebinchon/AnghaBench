
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmc_drvdata {int * etr_buf; int base; } ;


 int __tmc_etr_disable_hw (struct tmc_drvdata*) ;
 int coresight_disclaim_device (int ) ;
 int tmc_etr_disable_catu (struct tmc_drvdata*) ;

__attribute__((used)) static void tmc_etr_disable_hw(struct tmc_drvdata *drvdata)
{
 __tmc_etr_disable_hw(drvdata);

 tmc_etr_disable_catu(drvdata);
 coresight_disclaim_device(drvdata->base);

 drvdata->etr_buf = ((void*)0);
}
