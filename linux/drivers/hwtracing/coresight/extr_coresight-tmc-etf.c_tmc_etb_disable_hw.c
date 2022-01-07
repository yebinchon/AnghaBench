
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmc_drvdata {int base; } ;


 int __tmc_etb_disable_hw (struct tmc_drvdata*) ;
 int coresight_disclaim_device (int ) ;

__attribute__((used)) static void tmc_etb_disable_hw(struct tmc_drvdata *drvdata)
{
 __tmc_etb_disable_hw(drvdata);
 coresight_disclaim_device(drvdata->base);
}
