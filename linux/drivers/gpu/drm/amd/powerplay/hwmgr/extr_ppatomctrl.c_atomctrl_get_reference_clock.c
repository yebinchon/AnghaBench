
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u8 ;
typedef int u16 ;
struct pp_hwmgr {int adev; } ;
struct TYPE_2__ {int usReferenceClock; } ;
typedef TYPE_1__ ATOM_FIRMWARE_INFO ;


 int DATA ;
 int FirmwareInfo ;
 int GetIndexIntoMasterTable (int ,int ) ;
 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ smu_atom_get_data_table (int ,int ,int *,int *,int *) ;

uint32_t atomctrl_get_reference_clock(struct pp_hwmgr *hwmgr)
{
 ATOM_FIRMWARE_INFO *fw_info;
 u8 frev, crev;
 u16 size;
 uint32_t clock;

 fw_info = (ATOM_FIRMWARE_INFO *)
  smu_atom_get_data_table(hwmgr->adev,
   GetIndexIntoMasterTable(DATA, FirmwareInfo),
   &size, &frev, &crev);

 if (fw_info == ((void*)0))
  clock = 2700;
 else
  clock = (uint32_t)(le16_to_cpu(fw_info->usReferenceClock));

 return clock;
}
