
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc_drvdata {scalar_t__ hw_rev; } ;


 int CC_FIPS_SYNC_MODULE_ERROR ;
 int CC_FIPS_SYNC_MODULE_OK ;
 int CC_FIPS_SYNC_REE_STATUS ;
 scalar_t__ CC_HW_REV_712 ;
 int CC_REG (int ) ;
 int HOST_GPR0 ;
 int cc_iowrite (struct cc_drvdata*,int ,int) ;

void cc_set_ree_fips_status(struct cc_drvdata *drvdata, bool status)
{
 int val = CC_FIPS_SYNC_REE_STATUS;

 if (drvdata->hw_rev < CC_HW_REV_712)
  return;

 val |= (status ? CC_FIPS_SYNC_MODULE_OK : CC_FIPS_SYNC_MODULE_ERROR);

 cc_iowrite(drvdata, CC_REG(HOST_GPR0), val);
}
