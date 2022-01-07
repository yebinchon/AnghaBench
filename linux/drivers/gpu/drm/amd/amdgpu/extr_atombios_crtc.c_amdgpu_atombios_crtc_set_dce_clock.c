
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ucDCEClkType; int ucDCEClkSrc; int ulDCEClkFreq; } ;
struct TYPE_6__ {TYPE_2__ asParam; } ;
union set_dce_clock {TYPE_3__ v2_1; } ;
typedef int uint32_t ;
typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int atom_context; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
typedef int args ;


 int COMMAND ;
 int DRM_ERROR (char*,int,int) ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int SetDCEClock ;
 int amdgpu_atom_execute_table (int ,int,int *) ;
 int amdgpu_atom_parse_cmd_header (int ,int,int*,int*) ;
 int cpu_to_le32 (int) ;
 int le32_to_cpu (int ) ;
 int memset (union set_dce_clock*,int ,int) ;

u32 amdgpu_atombios_crtc_set_dce_clock(struct amdgpu_device *adev,
           u32 freq, u8 clk_type, u8 clk_src)
{
 u8 frev, crev;
 int index;
 union set_dce_clock args;
 u32 ret_freq = 0;

 memset(&args, 0, sizeof(args));

 index = GetIndexIntoMasterTable(COMMAND, SetDCEClock);
 if (!amdgpu_atom_parse_cmd_header(adev->mode_info.atom_context, index, &frev,
       &crev))
  return 0;

 switch (frev) {
 case 2:
  switch (crev) {
  case 1:
   args.v2_1.asParam.ulDCEClkFreq = cpu_to_le32(freq);
   args.v2_1.asParam.ucDCEClkType = clk_type;
   args.v2_1.asParam.ucDCEClkSrc = clk_src;
   amdgpu_atom_execute_table(adev->mode_info.atom_context, index, (uint32_t *)&args);
   ret_freq = le32_to_cpu(args.v2_1.asParam.ulDCEClkFreq) * 10;
   break;
  default:
   DRM_ERROR("Unknown table version %d %d\n", frev, crev);
   return 0;
  }
  break;
 default:
  DRM_ERROR("Unknown table version %d %d\n", frev, crev);
  return 0;
 }

 return ret_freq;
}
