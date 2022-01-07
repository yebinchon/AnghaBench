
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_asic_id {int chip_family; int hw_internal_rev; } ;
typedef enum dce_version { ____Placeholder_dce_version } dce_version ;


 int ASICREV_IS_RAVEN2 (int ) ;
 int ASICREV_IS_RENOIR (int ) ;
 int ASICREV_IS_VEGA20_P (int ) ;
 int ASIC_REV_IS_BHAVANI (int ) ;
 int ASIC_REV_IS_FIJI_P (int ) ;
 int ASIC_REV_IS_GODAVARI (int ) ;
 int ASIC_REV_IS_KALINDI (int ) ;
 int ASIC_REV_IS_POLARIS10_P (int ) ;
 int ASIC_REV_IS_POLARIS11_M (int ) ;
 int ASIC_REV_IS_POLARIS12_V (int ) ;
 int ASIC_REV_IS_TONGA_P (int ) ;
 int ASIC_REV_IS_VEGAM (int ) ;
 int DCE_VERSION_10_0 ;
 int DCE_VERSION_11_0 ;
 int DCE_VERSION_11_2 ;
 int DCE_VERSION_11_22 ;
 int DCE_VERSION_12_0 ;
 int DCE_VERSION_12_1 ;
 int DCE_VERSION_8_0 ;
 int DCE_VERSION_8_1 ;
 int DCE_VERSION_8_3 ;
 int DCE_VERSION_UNKNOWN ;
 int DCN_VERSION_1_0 ;
 int DCN_VERSION_1_01 ;
 int DCN_VERSION_2_0 ;
 int DCN_VERSION_2_1 ;
enum dce_version resource_parse_asic_id(struct hw_asic_id asic_id)
{
 enum dce_version dc_version = DCE_VERSION_UNKNOWN;
 switch (asic_id.chip_family) {

 case 133:
  dc_version = DCE_VERSION_8_0;
  break;
 case 131:
  if (ASIC_REV_IS_KALINDI(asic_id.hw_internal_rev) ||
      ASIC_REV_IS_BHAVANI(asic_id.hw_internal_rev) ||
      ASIC_REV_IS_GODAVARI(asic_id.hw_internal_rev))
   dc_version = DCE_VERSION_8_3;
  else
   dc_version = DCE_VERSION_8_1;
  break;
 case 132:
  dc_version = DCE_VERSION_11_0;
  break;

 case 128:
  if (ASIC_REV_IS_TONGA_P(asic_id.hw_internal_rev) ||
    ASIC_REV_IS_FIJI_P(asic_id.hw_internal_rev)) {
   dc_version = DCE_VERSION_10_0;
   break;
  }
  if (ASIC_REV_IS_POLARIS10_P(asic_id.hw_internal_rev) ||
    ASIC_REV_IS_POLARIS11_M(asic_id.hw_internal_rev) ||
    ASIC_REV_IS_POLARIS12_V(asic_id.hw_internal_rev)) {
   dc_version = DCE_VERSION_11_2;
  }
  if (ASIC_REV_IS_VEGAM(asic_id.hw_internal_rev))
   dc_version = DCE_VERSION_11_22;
  break;
 case 134:
  if (ASICREV_IS_VEGA20_P(asic_id.hw_internal_rev))
   dc_version = DCE_VERSION_12_1;
  else
   dc_version = DCE_VERSION_12_0;
  break;
 default:
  dc_version = DCE_VERSION_UNKNOWN;
  break;
 }
 return dc_version;
}
