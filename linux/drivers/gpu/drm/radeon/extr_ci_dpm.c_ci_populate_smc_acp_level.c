
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* u8 ;
typedef size_t u32 ;
struct TYPE_10__ {TYPE_1__* entries; scalar_t__ count; } ;
struct TYPE_11__ {TYPE_2__ acp_clock_voltage_dependency_table; } ;
struct TYPE_12__ {TYPE_3__ dyn_state; } ;
struct TYPE_13__ {TYPE_4__ dpm; } ;
struct radeon_device {TYPE_5__ pm; } ;
struct atom_clock_dividers {scalar_t__ post_divider; } ;
struct TYPE_15__ {size_t AcpLevelCount; TYPE_6__* AcpLevel; } ;
struct TYPE_14__ {int MinPhases; int MinVoltage; int Frequency; void* Divider; } ;
struct TYPE_9__ {int v; int clk; } ;
typedef TYPE_7__ SMU7_Discrete_DpmTable ;


 int COMPUTE_GPUCLK_INPUT_FLAG_DEFAULT_GPUCLK ;
 int EINVAL ;
 int cpu_to_be16 (int ) ;
 int cpu_to_be32 (int ) ;
 int radeon_atom_get_clock_dividers (struct radeon_device*,int ,int ,int,struct atom_clock_dividers*) ;

__attribute__((used)) static int ci_populate_smc_acp_level(struct radeon_device *rdev,
         SMU7_Discrete_DpmTable *table)
{
 u32 count;
 struct atom_clock_dividers dividers;
 int ret = -EINVAL;

 table->AcpLevelCount = (u8)
  (rdev->pm.dpm.dyn_state.acp_clock_voltage_dependency_table.count);

 for (count = 0; count < table->AcpLevelCount; count++) {
  table->AcpLevel[count].Frequency =
   rdev->pm.dpm.dyn_state.acp_clock_voltage_dependency_table.entries[count].clk;
  table->AcpLevel[count].MinVoltage =
   rdev->pm.dpm.dyn_state.acp_clock_voltage_dependency_table.entries[count].v;
  table->AcpLevel[count].MinPhases = 1;

  ret = radeon_atom_get_clock_dividers(rdev,
           COMPUTE_GPUCLK_INPUT_FLAG_DEFAULT_GPUCLK,
           table->AcpLevel[count].Frequency, 0, &dividers);
  if (ret)
   return ret;

  table->AcpLevel[count].Divider = (u8)dividers.post_divider;

  table->AcpLevel[count].Frequency = cpu_to_be32(table->AcpLevel[count].Frequency);
  table->AcpLevel[count].MinVoltage = cpu_to_be16(table->AcpLevel[count].MinVoltage);
 }

 return ret;
}
