
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef size_t u32 ;
struct kv_power_info {int acp_interval; int sram_end; TYPE_5__* acp_level; scalar_t__ dpm_table_start; scalar_t__ acp_level_count; } ;
struct atom_clock_dividers {int post_div; } ;
struct amdgpu_clock_voltage_dependency_table {scalar_t__ count; TYPE_4__* entries; } ;
struct TYPE_6__ {struct amdgpu_clock_voltage_dependency_table acp_clock_voltage_dependency_table; } ;
struct TYPE_7__ {TYPE_1__ dyn_state; } ;
struct TYPE_8__ {TYPE_2__ dpm; } ;
struct amdgpu_device {TYPE_3__ pm; } ;
struct TYPE_10__ {scalar_t__ Divider; int MinVoltage; int Frequency; } ;
struct TYPE_9__ {int clk; int v; } ;
typedef int SMU7_Fusion_ExtClkLevel ;


 int ACPInterval ;
 int AcpLevel ;
 int AcpLevelCount ;
 int COMPUTE_ENGINE_PLL_PARAM ;
 int SMU7_Fusion_DpmTable ;
 int SMU7_MAX_LEVELS_ACP ;
 int amdgpu_atombios_get_clock_dividers (struct amdgpu_device*,int ,int ,int,struct atom_clock_dividers*) ;
 int amdgpu_kv_copy_bytes_to_smc (struct amdgpu_device*,scalar_t__,scalar_t__*,int,int ) ;
 int cpu_to_be16 (int ) ;
 int cpu_to_be32 (int ) ;
 struct kv_power_info* kv_get_pi (struct amdgpu_device*) ;
 scalar_t__ offsetof (int ,int ) ;

__attribute__((used)) static int kv_populate_acp_table(struct amdgpu_device *adev)
{
 struct kv_power_info *pi = kv_get_pi(adev);
 struct amdgpu_clock_voltage_dependency_table *table =
  &adev->pm.dpm.dyn_state.acp_clock_voltage_dependency_table;
 struct atom_clock_dividers dividers;
 int ret;
 u32 i;

 if (table == ((void*)0) || table->count == 0)
  return 0;

 pi->acp_level_count = 0;
 for (i = 0; i < table->count; i++) {
  pi->acp_level[i].Frequency = cpu_to_be32(table->entries[i].clk);
  pi->acp_level[i].MinVoltage = cpu_to_be16(table->entries[i].v);

  ret = amdgpu_atombios_get_clock_dividers(adev, COMPUTE_ENGINE_PLL_PARAM,
        table->entries[i].clk, 0, &dividers);
  if (ret)
   return ret;
  pi->acp_level[i].Divider = (u8)dividers.post_div;

  pi->acp_level_count++;
 }

 ret = amdgpu_kv_copy_bytes_to_smc(adev,
       pi->dpm_table_start +
       offsetof(SMU7_Fusion_DpmTable, AcpLevelCount),
       (u8 *)&pi->acp_level_count,
       sizeof(u8),
       pi->sram_end);
 if (ret)
  return ret;

 pi->acp_interval = 1;

 ret = amdgpu_kv_copy_bytes_to_smc(adev,
       pi->dpm_table_start +
       offsetof(SMU7_Fusion_DpmTable, ACPInterval),
       (u8 *)&pi->acp_interval,
       sizeof(u8),
       pi->sram_end);
 if (ret)
  return ret;

 ret = amdgpu_kv_copy_bytes_to_smc(adev,
       pi->dpm_table_start +
       offsetof(SMU7_Fusion_DpmTable, AcpLevel),
       (u8 *)&pi->acp_level,
       sizeof(SMU7_Fusion_ExtClkLevel) * SMU7_MAX_LEVELS_ACP,
       pi->sram_end);
 if (ret)
  return ret;

 return ret;
}
