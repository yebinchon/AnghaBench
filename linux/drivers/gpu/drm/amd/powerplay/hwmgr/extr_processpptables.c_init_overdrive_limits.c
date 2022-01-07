
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_5__ {scalar_t__ memoryClock; scalar_t__ engineClock; } ;
struct TYPE_6__ {scalar_t__ overdriveVDDCStep; scalar_t__ maxOverdriveVDDC; scalar_t__ minOverdriveVDDC; TYPE_1__ overdriveLimit; } ;
struct pp_hwmgr {scalar_t__ chip_id; int adev; TYPE_2__ platform_descriptor; } ;
struct TYPE_7__ {int ucTableFormatRevision; int usStructureSize; } ;
typedef int ATOM_PPLIB_POWERPLAYTABLE ;
typedef int ATOM_FIRMWARE_INFO_V2_1 ;
typedef int ATOM_FIRMWARE_INFO_V1_4 ;
typedef TYPE_3__ ATOM_COMMON_TABLE_HEADER ;


 scalar_t__ CHIP_RAVEN ;
 int DATA ;
 int FirmwareInfo ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int init_overdrive_limits_V1_4 (struct pp_hwmgr*,int const*,int const*) ;
 int init_overdrive_limits_V2_1 (struct pp_hwmgr*,int const*,int const*) ;
 int le16_to_cpu (int ) ;
 TYPE_3__* smu_atom_get_data_table (int ,int ,int *,int *,int *) ;

__attribute__((used)) static int init_overdrive_limits(struct pp_hwmgr *hwmgr,
   const ATOM_PPLIB_POWERPLAYTABLE *powerplay_table)
{
 int result = 0;
 uint8_t frev, crev;
 uint16_t size;

 const ATOM_COMMON_TABLE_HEADER *fw_info = ((void*)0);

 hwmgr->platform_descriptor.overdriveLimit.engineClock = 0;
 hwmgr->platform_descriptor.overdriveLimit.memoryClock = 0;
 hwmgr->platform_descriptor.minOverdriveVDDC = 0;
 hwmgr->platform_descriptor.maxOverdriveVDDC = 0;
 hwmgr->platform_descriptor.overdriveVDDCStep = 0;

 if (hwmgr->chip_id == CHIP_RAVEN)
  return 0;


 fw_info = smu_atom_get_data_table(hwmgr->adev,
    GetIndexIntoMasterTable(DATA, FirmwareInfo),
    &size, &frev, &crev);

 if ((fw_info->ucTableFormatRevision == 1)
     && (le16_to_cpu(fw_info->usStructureSize) >= sizeof(ATOM_FIRMWARE_INFO_V1_4)))
  result = init_overdrive_limits_V1_4(hwmgr,
    powerplay_table,
    (const ATOM_FIRMWARE_INFO_V1_4 *)fw_info);

 else if ((fw_info->ucTableFormatRevision == 2)
   && (le16_to_cpu(fw_info->usStructureSize) >= sizeof(ATOM_FIRMWARE_INFO_V2_1)))
  result = init_overdrive_limits_V2_1(hwmgr,
    powerplay_table,
    (const ATOM_FIRMWARE_INFO_V2_1 *)fw_info);

 return result;
}
