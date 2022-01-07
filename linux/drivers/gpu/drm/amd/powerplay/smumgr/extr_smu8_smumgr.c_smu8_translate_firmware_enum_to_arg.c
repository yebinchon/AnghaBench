
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pp_hwmgr {int chip_id; } ;
typedef enum smu8_scratch_entry { ____Placeholder_smu8_scratch_entry } smu8_scratch_entry ;


 int CHIP_STONEY ;
 int TASK_ARG_INIT_CLK_TABLE ;
 int TASK_ARG_INIT_MM_PWR_LOG ;
 int TASK_ARG_REG_MMIO ;
 int UCODE_ID_CP_CE ;
 int UCODE_ID_CP_ME ;
 int UCODE_ID_CP_MEC_JT1 ;
 int UCODE_ID_CP_MEC_JT2 ;
 int UCODE_ID_CP_PFP ;
 int UCODE_ID_DMCU_ERAM ;
 int UCODE_ID_DMCU_IRAM ;
 int UCODE_ID_GMCON_RENG ;
 int UCODE_ID_RLC_G ;
 int UCODE_ID_RLC_SCRATCH ;
 int UCODE_ID_RLC_SRM_ARAM ;
 int UCODE_ID_RLC_SRM_DRAM ;
 int UCODE_ID_SDMA0 ;
 int UCODE_ID_SDMA1 ;

__attribute__((used)) static uint8_t smu8_translate_firmware_enum_to_arg(struct pp_hwmgr *hwmgr,
   enum smu8_scratch_entry firmware_enum)
{
 uint8_t ret = 0;

 switch (firmware_enum) {
 case 129:
  ret = UCODE_ID_SDMA0;
  break;
 case 128:
  if (hwmgr->chip_id == CHIP_STONEY)
   ret = UCODE_ID_SDMA0;
  else
   ret = UCODE_ID_SDMA1;
  break;
 case 142:
  ret = UCODE_ID_CP_CE;
  break;
 case 138:
  ret = UCODE_ID_CP_PFP;
  break;
 case 141:
  ret = UCODE_ID_CP_ME;
  break;
 case 140:
  ret = UCODE_ID_CP_MEC_JT1;
  break;
 case 139:
  if (hwmgr->chip_id == CHIP_STONEY)
   ret = UCODE_ID_CP_MEC_JT1;
  else
   ret = UCODE_ID_CP_MEC_JT2;
  break;
 case 135:
  ret = UCODE_ID_GMCON_RENG;
  break;
 case 133:
  ret = UCODE_ID_RLC_G;
  break;
 case 132:
  ret = UCODE_ID_RLC_SCRATCH;
  break;
 case 131:
  ret = UCODE_ID_RLC_SRM_ARAM;
  break;
 case 130:
  ret = UCODE_ID_RLC_SRM_DRAM;
  break;
 case 137:
  ret = UCODE_ID_DMCU_ERAM;
  break;
 case 136:
  ret = UCODE_ID_DMCU_IRAM;
  break;
 case 134:
  ret = TASK_ARG_INIT_MM_PWR_LOG;
  break;
 case 147:
 case 144:
 case 146:
 case 148:
 case 145:
 case 149:
  ret = TASK_ARG_REG_MMIO;
  break;
 case 143:
  ret = TASK_ARG_INIT_CLK_TABLE;
  break;
 }

 return ret;
}
