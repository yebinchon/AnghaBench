
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* u8 ;
typedef size_t u32 ;
struct radeon_vce_clock_voltage_dependency_table {scalar_t__ count; TYPE_4__* entries; } ;
struct TYPE_6__ {struct radeon_vce_clock_voltage_dependency_table vce_clock_voltage_dependency_table; } ;
struct TYPE_7__ {TYPE_1__ dyn_state; } ;
struct TYPE_8__ {TYPE_2__ dpm; } ;
struct radeon_device {TYPE_3__ pm; } ;
struct kv_power_info {scalar_t__ high_voltage_t; int vce_interval; int sram_end; TYPE_5__* vce_level; scalar_t__ dpm_table_start; scalar_t__ vce_level_count; } ;
struct atom_clock_dividers {int post_div; } ;
struct TYPE_10__ {void* Divider; void* ClkBypassCntl; int MinVoltage; int Frequency; } ;
struct TYPE_9__ {scalar_t__ v; int evclk; } ;
typedef int SMU7_Fusion_ExtClkLevel ;


 int COMPUTE_ENGINE_PLL_PARAM ;
 int SMU7_Fusion_DpmTable ;
 int SMU7_MAX_LEVELS_VCE ;
 int VCEInterval ;
 int VceLevel ;
 int VceLevelCount ;
 int cpu_to_be16 (scalar_t__) ;
 int cpu_to_be32 (int ) ;
 int kv_copy_bytes_to_smc (struct radeon_device*,scalar_t__,void**,int,int ) ;
 int kv_get_clk_bypass (struct radeon_device*,int ) ;
 struct kv_power_info* kv_get_pi (struct radeon_device*) ;
 scalar_t__ offsetof (int ,int ) ;
 int radeon_atom_get_clock_dividers (struct radeon_device*,int ,int ,int,struct atom_clock_dividers*) ;

__attribute__((used)) static int kv_populate_vce_table(struct radeon_device *rdev)
{
 struct kv_power_info *pi = kv_get_pi(rdev);
 int ret;
 u32 i;
 struct radeon_vce_clock_voltage_dependency_table *table =
  &rdev->pm.dpm.dyn_state.vce_clock_voltage_dependency_table;
 struct atom_clock_dividers dividers;

 if (table == ((void*)0) || table->count == 0)
  return 0;

 pi->vce_level_count = 0;
 for (i = 0; i < table->count; i++) {
  if (pi->high_voltage_t &&
      pi->high_voltage_t < table->entries[i].v)
   break;

  pi->vce_level[i].Frequency = cpu_to_be32(table->entries[i].evclk);
  pi->vce_level[i].MinVoltage = cpu_to_be16(table->entries[i].v);

  pi->vce_level[i].ClkBypassCntl =
   (u8)kv_get_clk_bypass(rdev, table->entries[i].evclk);

  ret = radeon_atom_get_clock_dividers(rdev, COMPUTE_ENGINE_PLL_PARAM,
           table->entries[i].evclk, 0, &dividers);
  if (ret)
   return ret;
  pi->vce_level[i].Divider = (u8)dividers.post_div;

  pi->vce_level_count++;
 }

 ret = kv_copy_bytes_to_smc(rdev,
       pi->dpm_table_start +
       offsetof(SMU7_Fusion_DpmTable, VceLevelCount),
       (u8 *)&pi->vce_level_count,
       sizeof(u8),
       pi->sram_end);
 if (ret)
  return ret;

 pi->vce_interval = 1;

 ret = kv_copy_bytes_to_smc(rdev,
       pi->dpm_table_start +
       offsetof(SMU7_Fusion_DpmTable, VCEInterval),
       (u8 *)&pi->vce_interval,
       sizeof(u8),
       pi->sram_end);
 if (ret)
  return ret;

 ret = kv_copy_bytes_to_smc(rdev,
       pi->dpm_table_start +
       offsetof(SMU7_Fusion_DpmTable, VceLevel),
       (u8 *)&pi->vce_level,
       sizeof(SMU7_Fusion_ExtClkLevel) * SMU7_MAX_LEVELS_VCE,
       pi->sram_end);

 return ret;
}
