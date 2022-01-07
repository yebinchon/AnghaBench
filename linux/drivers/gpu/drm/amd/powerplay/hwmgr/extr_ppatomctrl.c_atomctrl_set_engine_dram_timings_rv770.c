
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct TYPE_5__ {int atom_context; } ;
struct amdgpu_device {TYPE_2__ mode_info; } ;
struct TYPE_4__ {void* ulClock; } ;
struct TYPE_6__ {TYPE_1__ sReserved; void* ulTargetEngineClock; } ;
typedef TYPE_3__ SET_ENGINE_CLOCK_PS_ALLOCATION ;


 int COMMAND ;
 int COMPUTE_ENGINE_PLL_PARAM ;
 int DynamicMemorySettings ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int SET_CLOCK_FREQ_MASK ;
 int amdgpu_atom_execute_table (int ,int ,int*) ;
 void* cpu_to_le32 (int) ;

int atomctrl_set_engine_dram_timings_rv770(
  struct pp_hwmgr *hwmgr,
  uint32_t engine_clock,
  uint32_t memory_clock)
{
 struct amdgpu_device *adev = hwmgr->adev;

 SET_ENGINE_CLOCK_PS_ALLOCATION engine_clock_parameters;


 engine_clock_parameters.ulTargetEngineClock =
  cpu_to_le32((engine_clock & SET_CLOCK_FREQ_MASK) |
       ((COMPUTE_ENGINE_PLL_PARAM << 24)));


 engine_clock_parameters.sReserved.ulClock =
  cpu_to_le32(memory_clock & SET_CLOCK_FREQ_MASK);

 return amdgpu_atom_execute_table(adev->mode_info.atom_context,
   GetIndexIntoMasterTable(COMMAND, DynamicMemorySettings),
   (uint32_t *)&engine_clock_parameters);
}
