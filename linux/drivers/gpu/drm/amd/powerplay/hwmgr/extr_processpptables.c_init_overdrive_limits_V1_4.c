
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int engineClock; int memoryClock; } ;
struct TYPE_6__ {int maxOverdriveVDDC; scalar_t__ overdriveVDDCStep; void* minOverdriveVDDC; TYPE_1__ overdriveLimit; } ;
struct pp_hwmgr {TYPE_2__ platform_descriptor; } ;
struct TYPE_7__ {int usBootUpVDDCVoltage; int ul3DAccelerationEngineClock; int ulASICMaxMemoryClock; int ulASICMaxEngineClock; } ;
typedef int ATOM_PPLIB_POWERPLAYTABLE ;
typedef TYPE_3__ ATOM_FIRMWARE_INFO_V1_4 ;


 void* le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int init_overdrive_limits_V1_4(struct pp_hwmgr *hwmgr,
   const ATOM_PPLIB_POWERPLAYTABLE *powerplay_table,
   const ATOM_FIRMWARE_INFO_V1_4 *fw_info)
{
 hwmgr->platform_descriptor.overdriveLimit.engineClock =
    le32_to_cpu(fw_info->ulASICMaxEngineClock);

 hwmgr->platform_descriptor.overdriveLimit.memoryClock =
    le32_to_cpu(fw_info->ulASICMaxMemoryClock);

 hwmgr->platform_descriptor.maxOverdriveVDDC =
  le32_to_cpu(fw_info->ul3DAccelerationEngineClock) & 0x7FF;

 hwmgr->platform_descriptor.minOverdriveVDDC =
      le16_to_cpu(fw_info->usBootUpVDDCVoltage);

 hwmgr->platform_descriptor.maxOverdriveVDDC =
      le16_to_cpu(fw_info->usBootUpVDDCVoltage);

 hwmgr->platform_descriptor.overdriveVDDCStep = 0;
 return 0;
}
