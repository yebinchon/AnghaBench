
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u8 ;
typedef int u16 ;
struct pp_hwmgr {int adev; } ;
struct TYPE_6__ {int ucTableFormatRevision; int usStructureSize; } ;
struct TYPE_5__ {int usReferenceClock; } ;
struct TYPE_4__ {int usMemoryReferenceClock; } ;
typedef TYPE_1__ ATOM_FIRMWARE_INFO_V2_1 ;
typedef TYPE_2__ ATOM_FIRMWARE_INFO ;
typedef TYPE_3__ ATOM_COMMON_TABLE_HEADER ;


 int DATA ;
 int FirmwareInfo ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int le16_to_cpu (int ) ;
 scalar_t__ smu_atom_get_data_table (int ,int ,int *,int *,int *) ;

uint32_t atomctrl_get_mpll_reference_clock(struct pp_hwmgr *hwmgr)
{
 ATOM_COMMON_TABLE_HEADER *fw_info;
 uint32_t clock;
 u8 frev, crev;
 u16 size;

 fw_info = (ATOM_COMMON_TABLE_HEADER *)
  smu_atom_get_data_table(hwmgr->adev,
    GetIndexIntoMasterTable(DATA, FirmwareInfo),
    &size, &frev, &crev);

 if (fw_info == ((void*)0))
  clock = 2700;
 else {
  if ((fw_info->ucTableFormatRevision == 2) &&
   (le16_to_cpu(fw_info->usStructureSize) >= sizeof(ATOM_FIRMWARE_INFO_V2_1))) {
   ATOM_FIRMWARE_INFO_V2_1 *fwInfo_2_1 =
    (ATOM_FIRMWARE_INFO_V2_1 *)fw_info;
   clock = (uint32_t)(le16_to_cpu(fwInfo_2_1->usMemoryReferenceClock));
  } else {
   ATOM_FIRMWARE_INFO *fwInfo_0_0 =
    (ATOM_FIRMWARE_INFO *)fw_info;
   clock = (uint32_t)(le16_to_cpu(fwInfo_0_0->usReferenceClock));
  }
 }

 return clock;
}
