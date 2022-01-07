
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cc_drvdata {int dummy; } ;


 int CC_FIPS_SYNC_MODULE_OK ;
 int CC_FIPS_SYNC_TEE_STATUS ;
 int CC_REG (int ) ;
 int GPR_HOST ;
 int cc_ioread (struct cc_drvdata*,int ) ;

__attribute__((used)) static bool cc_get_tee_fips_status(struct cc_drvdata *drvdata)
{
 u32 reg;

 reg = cc_ioread(drvdata, CC_REG(GPR_HOST));

 if (reg & CC_FIPS_SYNC_TEE_STATUS)

  return (reg & CC_FIPS_SYNC_MODULE_OK);


 return 1;
}
