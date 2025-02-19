
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* u8 ;
typedef size_t u32 ;
struct sumo_sclk_voltage_mapping_table {scalar_t__ num_max_dpm_entries; TYPE_6__* entries; } ;
struct radeon_clock_voltage_dependency_table {TYPE_4__* entries; scalar_t__ count; } ;
struct TYPE_8__ {struct radeon_clock_voltage_dependency_table vddc_dependency_on_sclk; } ;
struct TYPE_9__ {TYPE_1__ dyn_state; } ;
struct TYPE_10__ {TYPE_2__ dpm; } ;
struct radeon_device {TYPE_3__ pm; } ;
struct TYPE_14__ {scalar_t__ sclk; } ;
struct TYPE_12__ {struct sumo_sclk_voltage_mapping_table sclk_voltage_mapping_table; } ;
struct kv_power_info {int graphics_dpm_level_count; void* graphics_boot_level; TYPE_7__ boot_pl; TYPE_5__ sys_info; } ;
struct TYPE_13__ {scalar_t__ sclk_frequency; } ;
struct TYPE_11__ {scalar_t__ clk; } ;


 int EINVAL ;
 int kv_dpm_power_level_enable (struct radeon_device*,size_t,int) ;
 struct kv_power_info* kv_get_pi (struct radeon_device*) ;

__attribute__((used)) static int kv_program_bootup_state(struct radeon_device *rdev)
{
 struct kv_power_info *pi = kv_get_pi(rdev);
 u32 i;
 struct radeon_clock_voltage_dependency_table *table =
  &rdev->pm.dpm.dyn_state.vddc_dependency_on_sclk;

 if (table && table->count) {
  for (i = pi->graphics_dpm_level_count - 1; i > 0; i--) {
   if (table->entries[i].clk == pi->boot_pl.sclk)
    break;
  }

  pi->graphics_boot_level = (u8)i;
  kv_dpm_power_level_enable(rdev, i, 1);
 } else {
  struct sumo_sclk_voltage_mapping_table *table =
   &pi->sys_info.sclk_voltage_mapping_table;

  if (table->num_max_dpm_entries == 0)
   return -EINVAL;

  for (i = pi->graphics_dpm_level_count - 1; i > 0; i--) {
   if (table->entries[i].sclk_frequency == pi->boot_pl.sclk)
    break;
  }

  pi->graphics_boot_level = (u8)i;
  kv_dpm_power_level_enable(rdev, i, 1);
 }
 return 0;
}
