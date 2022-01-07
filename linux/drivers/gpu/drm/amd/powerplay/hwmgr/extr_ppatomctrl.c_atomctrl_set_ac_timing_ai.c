
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct TYPE_5__ {int atom_context; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
struct TYPE_6__ {int ulClockFreq; int ulComputeClockFlag; } ;
struct TYPE_7__ {int ucMclkDPMState; TYPE_2__ ulClock; } ;
struct TYPE_8__ {TYPE_3__ asDPMMCReg; } ;
typedef TYPE_4__ DYNAMICE_MEMORY_SETTINGS_PARAMETER_V2_1 ;


 int ADJUST_MC_SETTING_PARAM ;
 int COMMAND ;
 int DynamicMemorySettings ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int SET_CLOCK_FREQ_MASK ;
 int amdgpu_atom_execute_table (int ,int ,int*) ;

int atomctrl_set_ac_timing_ai(struct pp_hwmgr *hwmgr, uint32_t memory_clock,
         uint8_t level)
{
 struct amdgpu_device *adev = hwmgr->adev;
 DYNAMICE_MEMORY_SETTINGS_PARAMETER_V2_1 memory_clock_parameters;
 int result;

 memory_clock_parameters.asDPMMCReg.ulClock.ulClockFreq =
  memory_clock & SET_CLOCK_FREQ_MASK;
 memory_clock_parameters.asDPMMCReg.ulClock.ulComputeClockFlag =
  ADJUST_MC_SETTING_PARAM;
 memory_clock_parameters.asDPMMCReg.ucMclkDPMState = level;

 result = amdgpu_atom_execute_table(adev->mode_info.atom_context,
   GetIndexIntoMasterTable(COMMAND, DynamicMemorySettings),
  (uint32_t *)&memory_clock_parameters);

 return result;
}
