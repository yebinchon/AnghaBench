
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_6__ {size_t num_max_dpm_entries; TYPE_1__* entries; } ;
struct TYPE_5__ {TYPE_3__ sclk_voltage_mapping_table; } ;
struct trinity_power_info {TYPE_2__ sys_info; } ;
struct radeon_device {int dummy; } ;
struct TYPE_4__ {size_t sclk_frequency; } ;


 int DRM_ERROR (char*) ;
 struct trinity_power_info* trinity_get_pi (struct radeon_device*) ;

__attribute__((used)) static u32 trinity_get_valid_engine_clock(struct radeon_device *rdev,
       u32 lower_limit)
{
 struct trinity_power_info *pi = trinity_get_pi(rdev);
 u32 i;

 for (i = 0; i < pi->sys_info.sclk_voltage_mapping_table.num_max_dpm_entries; i++) {
  if (pi->sys_info.sclk_voltage_mapping_table.entries[i].sclk_frequency >= lower_limit)
   return pi->sys_info.sclk_voltage_mapping_table.entries[i].sclk_frequency;
 }

 if (i == pi->sys_info.sclk_voltage_mapping_table.num_max_dpm_entries)
  DRM_ERROR("engine clock out of range!");

 return 0;
}
