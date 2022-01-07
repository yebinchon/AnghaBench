
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ulBootUpSidePortClock; } ;
struct TYPE_4__ {int ulBootUpMemoryClock; } ;
union igp_info {TYPE_2__ info_2; TYPE_1__ info; } ;
typedef int u8 ;
typedef scalar_t__ u16 ;
struct radeon_mode_info {TYPE_3__* atom_context; } ;
struct radeon_device {scalar_t__ family; struct radeon_mode_info mode_info; } ;
struct TYPE_6__ {scalar_t__ bios; } ;


 scalar_t__ CHIP_RS600 ;
 int DATA ;
 int DRM_ERROR (char*,int,int) ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int IntegratedSystemInfo ;
 scalar_t__ atom_parse_data_header (TYPE_3__*,int,int *,int*,int*,scalar_t__*) ;
 int le32_to_cpu (int ) ;

bool radeon_atombios_sideport_present(struct radeon_device *rdev)
{
 struct radeon_mode_info *mode_info = &rdev->mode_info;
 int index = GetIndexIntoMasterTable(DATA, IntegratedSystemInfo);
 union igp_info *igp_info;
 u8 frev, crev;
 u16 data_offset;


 if (rdev->family == CHIP_RS600)
  return 0;

 if (atom_parse_data_header(mode_info->atom_context, index, ((void*)0),
       &frev, &crev, &data_offset)) {
  igp_info = (union igp_info *)(mode_info->atom_context->bios +
          data_offset);
  switch (crev) {
  case 1:
   if (le32_to_cpu(igp_info->info.ulBootUpMemoryClock))
    return 1;
   break;
  case 2:
   if (le32_to_cpu(igp_info->info_2.ulBootUpSidePortClock))
    return 1;
   break;
  default:
   DRM_ERROR("Unsupported IGP table: %d %d\n", frev, crev);
   break;
  }
 }
 return 0;
}
