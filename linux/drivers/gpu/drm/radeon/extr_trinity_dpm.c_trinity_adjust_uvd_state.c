
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct trinity_ps {int dclk_high_divider; int vclk_high_divider; int dclk_low_divider; int vclk_low_divider; } ;
struct TYPE_4__ {TYPE_1__* uvd_clock_table_entries; } ;
struct trinity_power_info {TYPE_2__ sys_info; scalar_t__ uvd_dpm; } ;
struct radeon_ps {int class2; int class; } ;
struct radeon_device {int dummy; } ;
struct TYPE_3__ {int dclk_did; int vclk_did; } ;


 scalar_t__ r600_is_uvd_state (int ,int ) ;
 struct trinity_power_info* trinity_get_pi (struct radeon_device*) ;
 struct trinity_ps* trinity_get_ps (struct radeon_ps*) ;
 int trinity_get_uvd_clock_index (struct radeon_device*,struct radeon_ps*) ;

__attribute__((used)) static void trinity_adjust_uvd_state(struct radeon_device *rdev,
         struct radeon_ps *rps)
{
 struct trinity_ps *ps = trinity_get_ps(rps);
 struct trinity_power_info *pi = trinity_get_pi(rdev);
 u32 high_index = 0;
 u32 low_index = 0;

 if (pi->uvd_dpm && r600_is_uvd_state(rps->class, rps->class2)) {
  high_index = trinity_get_uvd_clock_index(rdev, rps);

  switch(high_index) {
  case 3:
  case 2:
   low_index = 1;
   break;
  case 1:
  case 0:
  default:
   low_index = 0;
   break;
  }

  ps->vclk_low_divider =
   pi->sys_info.uvd_clock_table_entries[high_index].vclk_did;
  ps->dclk_low_divider =
   pi->sys_info.uvd_clock_table_entries[high_index].dclk_did;
  ps->vclk_high_divider =
   pi->sys_info.uvd_clock_table_entries[low_index].vclk_did;
  ps->dclk_high_divider =
   pi->sys_info.uvd_clock_table_entries[low_index].dclk_did;
 }
}
