
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etb_drvdata {int base; } ;


 int __etb_enable_hw (struct etb_drvdata*) ;
 int coresight_claim_device (int ) ;

__attribute__((used)) static int etb_enable_hw(struct etb_drvdata *drvdata)
{
 int rc = coresight_claim_device(drvdata->base);

 if (rc)
  return rc;

 __etb_enable_hw(drvdata);
 return 0;
}
