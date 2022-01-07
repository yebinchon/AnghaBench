
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct TYPE_7__ {int atom_context; } ;
struct amdgpu_device {TYPE_2__ mode_info; } ;
struct TYPE_8__ {void* usPcc_fcw_slew_frac; void* usSsc_fcw_slew_frac; void* usPcc_fcw_int; void* usSsc_fcw1_int; void* usSsc_fcw1_frac; int ucSscEnable; int ucSclkPllRange; int ucSclkVcoMode; int ucSclkPostDiv; void* usSclk_fcw_int; void* usSclk_fcw_frac; } ;
typedef TYPE_3__ pp_atomctrl_clock_dividers_ai ;
struct TYPE_6__ {int ucPostDiv; int ulClock; } ;
struct TYPE_9__ {int usPcc_fcw_slew_frac; int usSsc_fcw_slew_frac; int usPcc_fcw_int; int usSsc_fcw1_int; int usSsc_fcw1_frac; int ucSscEnable; int ucSclkPllRange; int ucSclkVcoMode; int ucSclkPostDiv; int usSclk_fcw_int; int usSclk_fcw_frac; TYPE_1__ ulClock; } ;
typedef TYPE_4__ COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_7 ;


 int COMMAND ;
 int COMPUTE_GPUCLK_INPUT_FLAG_SCLK ;
 int ComputeMemoryEnginePLL ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int amdgpu_atom_execute_table (int ,int ,int *) ;
 int cpu_to_le32 (int ) ;
 void* le16_to_cpu (int ) ;

int atomctrl_get_engine_pll_dividers_ai(struct pp_hwmgr *hwmgr,
  uint32_t clock_value,
  pp_atomctrl_clock_dividers_ai *dividers)
{
 struct amdgpu_device *adev = hwmgr->adev;
 COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_7 pll_patameters;
 int result;

 pll_patameters.ulClock.ulClock = cpu_to_le32(clock_value);
 pll_patameters.ulClock.ucPostDiv = COMPUTE_GPUCLK_INPUT_FLAG_SCLK;

 result = amdgpu_atom_execute_table(adev->mode_info.atom_context,
   GetIndexIntoMasterTable(COMMAND, ComputeMemoryEnginePLL),
  (uint32_t *)&pll_patameters);

 if (0 == result) {
  dividers->usSclk_fcw_frac = le16_to_cpu(pll_patameters.usSclk_fcw_frac);
  dividers->usSclk_fcw_int = le16_to_cpu(pll_patameters.usSclk_fcw_int);
  dividers->ucSclkPostDiv = pll_patameters.ucSclkPostDiv;
  dividers->ucSclkVcoMode = pll_patameters.ucSclkVcoMode;
  dividers->ucSclkPllRange = pll_patameters.ucSclkPllRange;
  dividers->ucSscEnable = pll_patameters.ucSscEnable;
  dividers->usSsc_fcw1_frac = le16_to_cpu(pll_patameters.usSsc_fcw1_frac);
  dividers->usSsc_fcw1_int = le16_to_cpu(pll_patameters.usSsc_fcw1_int);
  dividers->usPcc_fcw_int = le16_to_cpu(pll_patameters.usPcc_fcw_int);
  dividers->usSsc_fcw_slew_frac = le16_to_cpu(pll_patameters.usSsc_fcw_slew_frac);
  dividers->usPcc_fcw_slew_frac = le16_to_cpu(pll_patameters.usPcc_fcw_slew_frac);
 }
 return result;
}
