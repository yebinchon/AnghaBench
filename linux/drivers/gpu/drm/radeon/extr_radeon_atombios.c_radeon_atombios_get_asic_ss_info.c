
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int * asSpreadSpectrum; } ;
struct TYPE_10__ {int * asSpreadSpectrum; } ;
struct TYPE_8__ {int * asSpreadSpectrum; } ;
union asic_ss_info {TYPE_5__ info_3; TYPE_3__ info_2; TYPE_1__ info; } ;
struct TYPE_13__ {int ucClockIndication; int ucSpreadSpectrumMode; int usSpreadRateIn10Hz; int usSpreadSpectrumPercentage; int ulTargetClockRange; } ;
struct TYPE_11__ {int ucClockIndication; int ucSpreadSpectrumMode; int usSpreadRateIn10Hz; int usSpreadSpectrumPercentage; int ulTargetClockRange; } ;
struct TYPE_9__ {int ucClockIndication; int ucSpreadSpectrumMode; int usSpreadRateInKhz; int usSpreadSpectrumPercentage; int ulTargetClockRange; } ;
union asic_ss_assignment {TYPE_6__ v3; TYPE_4__ v2; TYPE_2__ v1; } ;
typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int u8 ;
typedef int u32 ;
struct radeon_mode_info {int firmware_flags; TYPE_7__* atom_context; } ;
struct radeon_device {int flags; struct radeon_mode_info mode_info; } ;
struct radeon_atom_ss {int type; int rate; int percentage_divider; void* percentage; } ;
struct TYPE_14__ {scalar_t__ bios; } ;
typedef int ATOM_COMMON_TABLE_HEADER ;
typedef int ATOM_ASIC_SS_ASSIGNMENT_V3 ;
typedef int ATOM_ASIC_SS_ASSIGNMENT_V2 ;
typedef int ATOM_ASIC_SS_ASSIGNMENT ;


 int ASIC_INTERNAL_ENGINE_SS ;
 int ASIC_INTERNAL_MEMORY_SS ;
 int ASIC_InternalSS_Info ;
 int ATOM_BIOS_INFO_ENGINE_CLOCK_SS_SUPPORT ;
 int ATOM_BIOS_INFO_MEMORY_CLOCK_SS_SUPPORT ;
 int DATA ;
 int DRM_ERROR (char*,int,int) ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int RADEON_IS_IGP ;
 int SS_MODE_V3_PERCENTAGE_DIV_BY_1000_MASK ;
 scalar_t__ atom_parse_data_header (TYPE_7__*,int,scalar_t__*,int*,int*,scalar_t__*) ;
 void* le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int memset (struct radeon_atom_ss*,int ,int) ;
 int radeon_atombios_get_igp_ss_overrides (struct radeon_device*,struct radeon_atom_ss*,int) ;

bool radeon_atombios_get_asic_ss_info(struct radeon_device *rdev,
          struct radeon_atom_ss *ss,
          int id, u32 clock)
{
 struct radeon_mode_info *mode_info = &rdev->mode_info;
 int index = GetIndexIntoMasterTable(DATA, ASIC_InternalSS_Info);
 uint16_t data_offset, size;
 union asic_ss_info *ss_info;
 union asic_ss_assignment *ss_assign;
 uint8_t frev, crev;
 int i, num_indices;

 if (id == ASIC_INTERNAL_MEMORY_SS) {
  if (!(rdev->mode_info.firmware_flags & ATOM_BIOS_INFO_MEMORY_CLOCK_SS_SUPPORT))
   return 0;
 }
 if (id == ASIC_INTERNAL_ENGINE_SS) {
  if (!(rdev->mode_info.firmware_flags & ATOM_BIOS_INFO_ENGINE_CLOCK_SS_SUPPORT))
   return 0;
 }

 memset(ss, 0, sizeof(struct radeon_atom_ss));
 if (atom_parse_data_header(mode_info->atom_context, index, &size,
       &frev, &crev, &data_offset)) {

  ss_info =
   (union asic_ss_info *)(mode_info->atom_context->bios + data_offset);

  switch (frev) {
  case 1:
   num_indices = (size - sizeof(ATOM_COMMON_TABLE_HEADER)) /
    sizeof(ATOM_ASIC_SS_ASSIGNMENT);

   ss_assign = (union asic_ss_assignment *)((u8 *)&ss_info->info.asSpreadSpectrum[0]);
   for (i = 0; i < num_indices; i++) {
    if ((ss_assign->v1.ucClockIndication == id) &&
        (clock <= le32_to_cpu(ss_assign->v1.ulTargetClockRange))) {
     ss->percentage =
      le16_to_cpu(ss_assign->v1.usSpreadSpectrumPercentage);
     ss->type = ss_assign->v1.ucSpreadSpectrumMode;
     ss->rate = le16_to_cpu(ss_assign->v1.usSpreadRateInKhz);
     ss->percentage_divider = 100;
     return 1;
    }
    ss_assign = (union asic_ss_assignment *)
     ((u8 *)ss_assign + sizeof(ATOM_ASIC_SS_ASSIGNMENT));
   }
   break;
  case 2:
   num_indices = (size - sizeof(ATOM_COMMON_TABLE_HEADER)) /
    sizeof(ATOM_ASIC_SS_ASSIGNMENT_V2);
   ss_assign = (union asic_ss_assignment *)((u8 *)&ss_info->info_2.asSpreadSpectrum[0]);
   for (i = 0; i < num_indices; i++) {
    if ((ss_assign->v2.ucClockIndication == id) &&
        (clock <= le32_to_cpu(ss_assign->v2.ulTargetClockRange))) {
     ss->percentage =
      le16_to_cpu(ss_assign->v2.usSpreadSpectrumPercentage);
     ss->type = ss_assign->v2.ucSpreadSpectrumMode;
     ss->rate = le16_to_cpu(ss_assign->v2.usSpreadRateIn10Hz);
     ss->percentage_divider = 100;
     if ((crev == 2) &&
         ((id == ASIC_INTERNAL_ENGINE_SS) ||
          (id == ASIC_INTERNAL_MEMORY_SS)))
      ss->rate /= 100;
     return 1;
    }
    ss_assign = (union asic_ss_assignment *)
     ((u8 *)ss_assign + sizeof(ATOM_ASIC_SS_ASSIGNMENT_V2));
   }
   break;
  case 3:
   num_indices = (size - sizeof(ATOM_COMMON_TABLE_HEADER)) /
    sizeof(ATOM_ASIC_SS_ASSIGNMENT_V3);
   ss_assign = (union asic_ss_assignment *)((u8 *)&ss_info->info_3.asSpreadSpectrum[0]);
   for (i = 0; i < num_indices; i++) {
    if ((ss_assign->v3.ucClockIndication == id) &&
        (clock <= le32_to_cpu(ss_assign->v3.ulTargetClockRange))) {
     ss->percentage =
      le16_to_cpu(ss_assign->v3.usSpreadSpectrumPercentage);
     ss->type = ss_assign->v3.ucSpreadSpectrumMode;
     ss->rate = le16_to_cpu(ss_assign->v3.usSpreadRateIn10Hz);
     if (ss_assign->v3.ucSpreadSpectrumMode &
         SS_MODE_V3_PERCENTAGE_DIV_BY_1000_MASK)
      ss->percentage_divider = 1000;
     else
      ss->percentage_divider = 100;
     if ((id == ASIC_INTERNAL_ENGINE_SS) ||
         (id == ASIC_INTERNAL_MEMORY_SS))
      ss->rate /= 100;
     if (rdev->flags & RADEON_IS_IGP)
      radeon_atombios_get_igp_ss_overrides(rdev, ss, id);
     return 1;
    }
    ss_assign = (union asic_ss_assignment *)
     ((u8 *)ss_assign + sizeof(ATOM_ASIC_SS_ASSIGNMENT_V3));
   }
   break;
  default:
   DRM_ERROR("Unsupported ASIC_InternalSS_Info table: %d %d\n", frev, crev);
   break;
  }

 }
 return 0;
}
