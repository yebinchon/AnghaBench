
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct TYPE_8__ {int atom_context; } ;
struct amdgpu_device {TYPE_2__ mode_info; } ;
struct TYPE_10__ {int ulPostDiv; int ulClock; void* ulMclk_fcw_frac; void* ulMclk_fcw_int; } ;
typedef TYPE_4__ pp_atomctrl_memory_clock_param_ai ;
struct TYPE_9__ {int ucPostDiv; int ulClock; } ;
struct TYPE_7__ {int member_0; } ;
struct TYPE_11__ {TYPE_3__ ulClock; int usMclk_fcw_frac; int usMclk_fcw_int; int member_2; int member_1; TYPE_1__ member_0; } ;
typedef TYPE_5__ COMPUTE_MEMORY_CLOCK_PARAM_PARAMETERS_V2_3 ;


 int COMMAND ;
 int ComputeMemoryClockParam ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int amdgpu_atom_execute_table (int ,int ,int *) ;
 int cpu_to_le32 (int ) ;
 void* le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int udelay (int) ;

int atomctrl_get_memory_pll_dividers_ai(struct pp_hwmgr *hwmgr,
     uint32_t clock_value,
     pp_atomctrl_memory_clock_param_ai *mpll_param)
{
 struct amdgpu_device *adev = hwmgr->adev;
 COMPUTE_MEMORY_CLOCK_PARAM_PARAMETERS_V2_3 mpll_parameters = {{0}, 0, 0};
 int result;

 mpll_parameters.ulClock.ulClock = cpu_to_le32(clock_value);

 result = amdgpu_atom_execute_table(adev->mode_info.atom_context,
   GetIndexIntoMasterTable(COMMAND, ComputeMemoryClockParam),
   (uint32_t *)&mpll_parameters);


 udelay(10);

 if (!result) {
  mpll_param->ulMclk_fcw_int =
   le16_to_cpu(mpll_parameters.usMclk_fcw_int);
  mpll_param->ulMclk_fcw_frac =
   le16_to_cpu(mpll_parameters.usMclk_fcw_frac);
  mpll_param->ulClock =
   le32_to_cpu(mpll_parameters.ulClock.ulClock);
  mpll_param->ulPostDiv = mpll_parameters.ulClock.ucPostDiv;
 }

 return result;
}
