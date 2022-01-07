
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {void* ucPpll; int ulDispEngClkFreq; } ;
struct TYPE_4__ {void* ucPpll; int usPixelClock; int ucCRTC; } ;
union set_pixel_clock {TYPE_2__ v6; TYPE_1__ v5; } ;
typedef int uint32_t ;
typedef int u8 ;
typedef int u32 ;
struct TYPE_6__ {int atom_context; } ;
struct radeon_device {TYPE_3__ mode_info; } ;
typedef int args ;


 int ASIC_IS_DCE6 (struct radeon_device*) ;
 int ASIC_IS_DCE61 (struct radeon_device*) ;
 int ASIC_IS_DCE8 (struct radeon_device*) ;
 int ATOM_CRTC_INVALID ;
 void* ATOM_DCPLL ;
 void* ATOM_EXT_PLL1 ;
 void* ATOM_PPLL0 ;
 int COMMAND ;
 int DRM_ERROR (char*,int,int) ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int SetPixelClock ;
 int atom_execute_table (int ,int,int *) ;
 int atom_parse_cmd_header (int ,int,int*,int*) ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int memset (union set_pixel_clock*,int ,int) ;

__attribute__((used)) static void atombios_crtc_set_disp_eng_pll(struct radeon_device *rdev,
        u32 dispclk)
{
 u8 frev, crev;
 int index;
 union set_pixel_clock args;

 memset(&args, 0, sizeof(args));

 index = GetIndexIntoMasterTable(COMMAND, SetPixelClock);
 if (!atom_parse_cmd_header(rdev->mode_info.atom_context, index, &frev,
       &crev))
  return;

 switch (frev) {
 case 1:
  switch (crev) {
  case 5:



   args.v5.ucCRTC = ATOM_CRTC_INVALID;
   args.v5.usPixelClock = cpu_to_le16(dispclk);
   args.v5.ucPpll = ATOM_DCPLL;
   break;
  case 6:



   args.v6.ulDispEngClkFreq = cpu_to_le32(dispclk);
   if (ASIC_IS_DCE61(rdev) || ASIC_IS_DCE8(rdev))
    args.v6.ucPpll = ATOM_EXT_PLL1;
   else if (ASIC_IS_DCE6(rdev))
    args.v6.ucPpll = ATOM_PPLL0;
   else
    args.v6.ucPpll = ATOM_DCPLL;
   break;
  default:
   DRM_ERROR("Unknown table version %d %d\n", frev, crev);
   return;
  }
  break;
 default:
  DRM_ERROR("Unknown table version %d %d\n", frev, crev);
  return;
 }
 atom_execute_table(rdev->mode_info.atom_context, index, (uint32_t *)&args);
}
