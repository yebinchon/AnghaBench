
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
struct TYPE_5__ {int atom_context; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
typedef int args ;
struct TYPE_6__ {void* ulClock; } ;
struct TYPE_7__ {TYPE_2__ sReserved; void* ulTargetEngineClock; } ;
typedef TYPE_3__ SET_ENGINE_CLOCK_PS_ALLOCATION ;


 int COMMAND ;
 int COMPUTE_ENGINE_PLL_PARAM ;
 int DynamicMemorySettings ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int SET_CLOCK_FREQ_MASK ;
 int amdgpu_atom_execute_table (int ,int,int *) ;
 void* cpu_to_le32 (int) ;
 int memset (TYPE_3__*,int ,int) ;

void amdgpu_atombios_set_engine_dram_timings(struct amdgpu_device *adev,
          u32 eng_clock, u32 mem_clock)
{
 SET_ENGINE_CLOCK_PS_ALLOCATION args;
 int index = GetIndexIntoMasterTable(COMMAND, DynamicMemorySettings);
 u32 tmp;

 memset(&args, 0, sizeof(args));

 tmp = eng_clock & SET_CLOCK_FREQ_MASK;
 tmp |= (COMPUTE_ENGINE_PLL_PARAM << 24);

 args.ulTargetEngineClock = cpu_to_le32(tmp);
 if (mem_clock)
  args.sReserved.ulClock = cpu_to_le32(mem_clock & SET_CLOCK_FREQ_MASK);

 amdgpu_atom_execute_table(adev->mode_info.atom_context, index, (uint32_t *)&args);
}
