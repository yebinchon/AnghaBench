
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum cgs_ucode_id { ____Placeholder_cgs_ucode_id } cgs_ucode_id ;


 int CGS_UCODE_ID_CP_CE ;
 int CGS_UCODE_ID_CP_ME ;
 int CGS_UCODE_ID_CP_MEC_JT1 ;
 int CGS_UCODE_ID_CP_MEC_JT2 ;
 int CGS_UCODE_ID_CP_PFP ;
 int CGS_UCODE_ID_MAXIMUM ;
 int CGS_UCODE_ID_RLC_G ;
 int CGS_UCODE_ID_SDMA0 ;
 int CGS_UCODE_ID_SDMA1 ;
__attribute__((used)) static enum cgs_ucode_id smu8_convert_fw_type_to_cgs(uint32_t fw_type)
{
 enum cgs_ucode_id result = CGS_UCODE_ID_MAXIMUM;

 switch (fw_type) {
 case 129:
  result = CGS_UCODE_ID_SDMA0;
  break;
 case 128:
  result = CGS_UCODE_ID_SDMA1;
  break;
 case 135:
  result = CGS_UCODE_ID_CP_CE;
  break;
 case 131:
  result = CGS_UCODE_ID_CP_PFP;
  break;
 case 134:
  result = CGS_UCODE_ID_CP_ME;
  break;
 case 133:
  result = CGS_UCODE_ID_CP_MEC_JT1;
  break;
 case 132:
  result = CGS_UCODE_ID_CP_MEC_JT2;
  break;
 case 130:
  result = CGS_UCODE_ID_RLC_G;
  break;
 default:
  break;
 }

 return result;
}
