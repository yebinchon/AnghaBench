
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmc_drvdata {int base; } ;


 int __tmc_etb_enable_hw (struct tmc_drvdata*) ;
 int coresight_claim_device (int ) ;

__attribute__((used)) static int tmc_etb_enable_hw(struct tmc_drvdata *drvdata)
{
 int rc = coresight_claim_device(drvdata->base);

 if (rc)
  return rc;

 __tmc_etb_enable_hw(drvdata);
 return 0;
}
