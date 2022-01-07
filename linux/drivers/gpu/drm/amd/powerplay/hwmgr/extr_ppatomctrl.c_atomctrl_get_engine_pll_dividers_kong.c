
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct TYPE_5__ {int atom_context; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
struct TYPE_6__ {int real_clock; int pll_post_divider; } ;
typedef TYPE_2__ pp_atomctrl_clock_dividers_kong ;
struct TYPE_7__ {int ulClock; int ucPostDiv; } ;
typedef TYPE_3__ COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS_V4 ;


 int COMMAND ;
 int ComputeMemoryEnginePLL ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int amdgpu_atom_execute_table (int ,int ,int *) ;
 int cpu_to_le32 (int ) ;
 int le32_to_cpu (int ) ;

int atomctrl_get_engine_pll_dividers_kong(struct pp_hwmgr *hwmgr,
       uint32_t clock_value,
       pp_atomctrl_clock_dividers_kong *dividers)
{
 struct amdgpu_device *adev = hwmgr->adev;
 COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS_V4 pll_parameters;
 int result;

 pll_parameters.ulClock = cpu_to_le32(clock_value);

 result = amdgpu_atom_execute_table(adev->mode_info.atom_context,
   GetIndexIntoMasterTable(COMMAND, ComputeMemoryEnginePLL),
  (uint32_t *)&pll_parameters);

 if (0 == result) {
  dividers->pll_post_divider = pll_parameters.ucPostDiv;
  dividers->real_clock = le32_to_cpu(pll_parameters.ulClock);
 }

 return result;
}
