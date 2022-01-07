
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_asic_id {int chip_family; int hw_internal_rev; } ;
typedef enum bw_calcs_version { ____Placeholder_bw_calcs_version } bw_calcs_version ;


 int ASIC_REV_IS_POLARIS10_P (int ) ;
 int ASIC_REV_IS_POLARIS11_M (int ) ;
 int ASIC_REV_IS_POLARIS12_V (int ) ;
 int ASIC_REV_IS_STONEY (int ) ;
 int ASIC_REV_IS_VEGAM (int ) ;
 int BW_CALCS_VERSION_CARRIZO ;
 int BW_CALCS_VERSION_INVALID ;
 int BW_CALCS_VERSION_POLARIS10 ;
 int BW_CALCS_VERSION_POLARIS11 ;
 int BW_CALCS_VERSION_POLARIS12 ;
 int BW_CALCS_VERSION_STONEY ;
 int BW_CALCS_VERSION_VEGA10 ;
 int BW_CALCS_VERSION_VEGAM ;




__attribute__((used)) static enum bw_calcs_version bw_calcs_version_from_asic_id(struct hw_asic_id asic_id)
{
 switch (asic_id.chip_family) {

 case 129:
  if (ASIC_REV_IS_STONEY(asic_id.hw_internal_rev))
   return BW_CALCS_VERSION_STONEY;
  return BW_CALCS_VERSION_CARRIZO;

 case 128:
  if (ASIC_REV_IS_POLARIS12_V(asic_id.hw_internal_rev))
   return BW_CALCS_VERSION_POLARIS12;
  if (ASIC_REV_IS_POLARIS10_P(asic_id.hw_internal_rev))
   return BW_CALCS_VERSION_POLARIS10;
  if (ASIC_REV_IS_POLARIS11_M(asic_id.hw_internal_rev))
   return BW_CALCS_VERSION_POLARIS11;
  if (ASIC_REV_IS_VEGAM(asic_id.hw_internal_rev))
   return BW_CALCS_VERSION_VEGAM;
  return BW_CALCS_VERSION_INVALID;

 case 130:
  return BW_CALCS_VERSION_VEGA10;

 default:
  return BW_CALCS_VERSION_INVALID;
 }
}
