
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int usVoltageTime; int usBackbiasTime; int ulPlatformCaps; } ;
union power_info {TYPE_3__ pplib; } ;
typedef int u8 ;
typedef scalar_t__ u16 ;
struct radeon_mode_info {TYPE_4__* atom_context; } ;
struct TYPE_5__ {void* voltage_response_time; void* backbias_response_time; int platform_caps; } ;
struct TYPE_6__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; struct radeon_mode_info mode_info; } ;
struct TYPE_8__ {scalar_t__ bios; } ;


 int DATA ;
 int EINVAL ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int PowerPlayInfo ;
 int atom_parse_data_header (TYPE_4__*,int,int *,int *,int *,scalar_t__*) ;
 void* le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

int r600_get_platform_caps(struct radeon_device *rdev)
{
 struct radeon_mode_info *mode_info = &rdev->mode_info;
 union power_info *power_info;
 int index = GetIndexIntoMasterTable(DATA, PowerPlayInfo);
 u16 data_offset;
 u8 frev, crev;

 if (!atom_parse_data_header(mode_info->atom_context, index, ((void*)0),
       &frev, &crev, &data_offset))
  return -EINVAL;
 power_info = (union power_info *)(mode_info->atom_context->bios + data_offset);

 rdev->pm.dpm.platform_caps = le32_to_cpu(power_info->pplib.ulPlatformCaps);
 rdev->pm.dpm.backbias_response_time = le16_to_cpu(power_info->pplib.usBackbiasTime);
 rdev->pm.dpm.voltage_response_time = le16_to_cpu(power_info->pplib.usVoltageTime);

 return 0;
}
