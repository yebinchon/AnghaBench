
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t u32 ;
struct sumo_sclk_voltage_mapping_table {size_t num_max_dpm_entries; TYPE_6__* entries; } ;
struct TYPE_11__ {struct sumo_sclk_voltage_mapping_table sclk_voltage_mapping_table; int vid_mapping_table; } ;
struct kv_power_info {scalar_t__ high_voltage_t; scalar_t__ graphics_dpm_level_count; int * at; TYPE_5__ sys_info; } ;
struct amdgpu_clock_voltage_dependency_table {size_t count; TYPE_4__* entries; } ;
struct TYPE_7__ {struct amdgpu_clock_voltage_dependency_table vddc_dependency_on_sclk; } ;
struct TYPE_8__ {TYPE_1__ dyn_state; } ;
struct TYPE_9__ {TYPE_2__ dpm; } ;
struct amdgpu_device {TYPE_3__ pm; } ;
struct TYPE_12__ {size_t vid_2bit; int sclk_frequency; } ;
struct TYPE_10__ {int v; int clk; } ;


 size_t SMU7_MAX_LEVELS_GRAPHICS ;
 scalar_t__ kv_convert_2bit_index_to_voltage (struct amdgpu_device*,size_t) ;
 scalar_t__ kv_convert_8bit_index_to_voltage (struct amdgpu_device*,int ) ;
 size_t kv_convert_vid7_to_vid2 (struct amdgpu_device*,int *,int ) ;
 int kv_dpm_power_level_enable (struct amdgpu_device*,size_t,int) ;
 int kv_dpm_power_level_enabled_for_throttle (struct amdgpu_device*,size_t,int) ;
 struct kv_power_info* kv_get_pi (struct amdgpu_device*) ;
 int kv_set_at (struct amdgpu_device*,size_t,int ) ;
 int kv_set_divider_value (struct amdgpu_device*,size_t,int ) ;
 int kv_set_vid (struct amdgpu_device*,size_t,size_t) ;

__attribute__((used)) static void kv_init_graphics_levels(struct amdgpu_device *adev)
{
 struct kv_power_info *pi = kv_get_pi(adev);
 u32 i;
 struct amdgpu_clock_voltage_dependency_table *table =
  &adev->pm.dpm.dyn_state.vddc_dependency_on_sclk;

 if (table && table->count) {
  u32 vid_2bit;

  pi->graphics_dpm_level_count = 0;
  for (i = 0; i < table->count; i++) {
   if (pi->high_voltage_t &&
       (pi->high_voltage_t <
        kv_convert_8bit_index_to_voltage(adev, table->entries[i].v)))
    break;

   kv_set_divider_value(adev, i, table->entries[i].clk);
   vid_2bit = kv_convert_vid7_to_vid2(adev,
          &pi->sys_info.vid_mapping_table,
          table->entries[i].v);
   kv_set_vid(adev, i, vid_2bit);
   kv_set_at(adev, i, pi->at[i]);
   kv_dpm_power_level_enabled_for_throttle(adev, i, 1);
   pi->graphics_dpm_level_count++;
  }
 } else {
  struct sumo_sclk_voltage_mapping_table *table =
   &pi->sys_info.sclk_voltage_mapping_table;

  pi->graphics_dpm_level_count = 0;
  for (i = 0; i < table->num_max_dpm_entries; i++) {
   if (pi->high_voltage_t &&
       pi->high_voltage_t <
       kv_convert_2bit_index_to_voltage(adev, table->entries[i].vid_2bit))
    break;

   kv_set_divider_value(adev, i, table->entries[i].sclk_frequency);
   kv_set_vid(adev, i, table->entries[i].vid_2bit);
   kv_set_at(adev, i, pi->at[i]);
   kv_dpm_power_level_enabled_for_throttle(adev, i, 1);
   pi->graphics_dpm_level_count++;
  }
 }

 for (i = 0; i < SMU7_MAX_LEVELS_GRAPHICS; i++)
  kv_dpm_power_level_enable(adev, i, 0);
}
