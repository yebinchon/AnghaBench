
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_firmware_info {int ucode_id; } ;
typedef enum psp_gfx_fw_type { ____Placeholder_psp_gfx_fw_type } psp_gfx_fw_type ;
 int EINVAL ;
 int GFX_FW_TYPE_CP_CE ;
 int GFX_FW_TYPE_CP_ME ;
 int GFX_FW_TYPE_CP_MEC ;
 int GFX_FW_TYPE_CP_MEC_ME1 ;
 int GFX_FW_TYPE_CP_MEC_ME2 ;
 int GFX_FW_TYPE_CP_PFP ;
 int GFX_FW_TYPE_DMCU_ERAM ;
 int GFX_FW_TYPE_DMCU_ISR ;
 int GFX_FW_TYPE_RLC_G ;
 int GFX_FW_TYPE_RLC_RESTORE_LIST_GPM_MEM ;
 int GFX_FW_TYPE_RLC_RESTORE_LIST_SRM_CNTL ;
 int GFX_FW_TYPE_RLC_RESTORE_LIST_SRM_MEM ;
 int GFX_FW_TYPE_SDMA0 ;
 int GFX_FW_TYPE_SDMA1 ;
 int GFX_FW_TYPE_SDMA2 ;
 int GFX_FW_TYPE_SDMA3 ;
 int GFX_FW_TYPE_SDMA4 ;
 int GFX_FW_TYPE_SDMA5 ;
 int GFX_FW_TYPE_SDMA6 ;
 int GFX_FW_TYPE_SDMA7 ;
 int GFX_FW_TYPE_SMU ;
 int GFX_FW_TYPE_UVD ;
 int GFX_FW_TYPE_UVD1 ;
 int GFX_FW_TYPE_VCE ;
 int GFX_FW_TYPE_VCN ;
 int GFX_FW_TYPE_VCN0_RAM ;
 int GFX_FW_TYPE_VCN1_RAM ;

__attribute__((used)) static int psp_get_fw_type(struct amdgpu_firmware_info *ucode,
      enum psp_gfx_fw_type *type)
{
 switch (ucode->ucode_id) {
 case 142:
  *type = GFX_FW_TYPE_SDMA0;
  break;
 case 141:
  *type = GFX_FW_TYPE_SDMA1;
  break;
 case 140:
  *type = GFX_FW_TYPE_SDMA2;
  break;
 case 139:
  *type = GFX_FW_TYPE_SDMA3;
  break;
 case 138:
  *type = GFX_FW_TYPE_SDMA4;
  break;
 case 137:
  *type = GFX_FW_TYPE_SDMA5;
  break;
 case 136:
  *type = GFX_FW_TYPE_SDMA6;
  break;
 case 135:
  *type = GFX_FW_TYPE_SDMA7;
  break;
 case 156:
  *type = GFX_FW_TYPE_CP_CE;
  break;
 case 150:
  *type = GFX_FW_TYPE_CP_PFP;
  break;
 case 155:
  *type = GFX_FW_TYPE_CP_ME;
  break;
 case 154:
  *type = GFX_FW_TYPE_CP_MEC;
  break;
 case 153:
  *type = GFX_FW_TYPE_CP_MEC_ME1;
  break;
 case 152:
  *type = GFX_FW_TYPE_CP_MEC;
  break;
 case 151:
  *type = GFX_FW_TYPE_CP_MEC_ME2;
  break;
 case 146:
  *type = GFX_FW_TYPE_RLC_G;
  break;
 case 145:
  *type = GFX_FW_TYPE_RLC_RESTORE_LIST_SRM_CNTL;
  break;
 case 144:
  *type = GFX_FW_TYPE_RLC_RESTORE_LIST_GPM_MEM;
  break;
 case 143:
  *type = GFX_FW_TYPE_RLC_RESTORE_LIST_SRM_MEM;
  break;
 case 134:
  *type = GFX_FW_TYPE_SMU;
  break;
 case 133:
  *type = GFX_FW_TYPE_UVD;
  break;
 case 132:
  *type = GFX_FW_TYPE_UVD1;
  break;
 case 131:
  *type = GFX_FW_TYPE_VCE;
  break;
 case 130:
  *type = GFX_FW_TYPE_VCN;
  break;
 case 149:
  *type = GFX_FW_TYPE_DMCU_ERAM;
  break;
 case 148:
  *type = GFX_FW_TYPE_DMCU_ISR;
  break;
 case 129:
  *type = GFX_FW_TYPE_VCN0_RAM;
  break;
 case 128:
  *type = GFX_FW_TYPE_VCN1_RAM;
  break;
 case 147:
 default:
  return -EINVAL;
 }

 return 0;
}
