
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct radeon_device {int dummy; } ;
struct radeon_clock_and_voltage_limits {int mclk; int vddc; int sclk; } ;
struct TYPE_6__ {int num_max_dpm_entries; TYPE_1__* entries; } ;
struct TYPE_5__ {int * nbp_memory_clock; TYPE_3__ sclk_voltage_mapping_table; } ;
struct kv_power_info {TYPE_2__ sys_info; } ;
struct TYPE_4__ {int vid_2bit; int sclk_frequency; } ;


 int kv_convert_2bit_index_to_voltage (struct radeon_device*,int ) ;
 struct kv_power_info* kv_get_pi (struct radeon_device*) ;

__attribute__((used)) static void kv_construct_max_power_limits_table(struct radeon_device *rdev,
      struct radeon_clock_and_voltage_limits *table)
{
 struct kv_power_info *pi = kv_get_pi(rdev);

 if (pi->sys_info.sclk_voltage_mapping_table.num_max_dpm_entries > 0) {
  int idx = pi->sys_info.sclk_voltage_mapping_table.num_max_dpm_entries - 1;
  table->sclk =
   pi->sys_info.sclk_voltage_mapping_table.entries[idx].sclk_frequency;
  table->vddc =
   kv_convert_2bit_index_to_voltage(rdev,
        pi->sys_info.sclk_voltage_mapping_table.entries[idx].vid_2bit);
 }

 table->mclk = pi->sys_info.nbp_memory_clock[0];
}
