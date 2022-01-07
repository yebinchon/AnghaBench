
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ucEngineClockHigh; int tdpLimit; int vddcIndex; int usEngineClockLow; } ;
union pplib_clock_info {TYPE_1__ sumo; } ;
typedef int u32 ;
struct sumo_ps {int num_levels; struct sumo_pl* levels; } ;
struct sumo_power_info {scalar_t__ enable_sclk_ds; } ;
struct sumo_pl {int sclk; int ds_divider_index; int ss_divider_index; int sclk_dpm_tdp_limit; int vddc_index; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;


 int le16_to_cpu (int ) ;
 struct sumo_power_info* sumo_get_pi (struct radeon_device*) ;
 struct sumo_ps* sumo_get_ps (struct radeon_ps*) ;

__attribute__((used)) static void sumo_parse_pplib_clock_info(struct radeon_device *rdev,
     struct radeon_ps *rps, int index,
     union pplib_clock_info *clock_info)
{
 struct sumo_power_info *pi = sumo_get_pi(rdev);
 struct sumo_ps *ps = sumo_get_ps(rps);
 struct sumo_pl *pl = &ps->levels[index];
 u32 sclk;

 sclk = le16_to_cpu(clock_info->sumo.usEngineClockLow);
 sclk |= clock_info->sumo.ucEngineClockHigh << 16;
 pl->sclk = sclk;
 pl->vddc_index = clock_info->sumo.vddcIndex;
 pl->sclk_dpm_tdp_limit = clock_info->sumo.tdpLimit;

 ps->num_levels = index + 1;

 if (pi->enable_sclk_ds) {
  pl->ds_divider_index = 5;
  pl->ss_divider_index = 4;
 }
}
