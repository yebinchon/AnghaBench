
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ucEngineClockHigh; int vddcIndex; int usEngineClockLow; } ;
union pplib_clock_info {TYPE_1__ sumo; } ;
typedef int u32 ;
struct trinity_ps {int num_levels; struct trinity_pl* levels; } ;
struct trinity_power_info {scalar_t__ enable_sclk_ds; } ;
struct trinity_pl {int sclk; int ds_divider_index; int ss_divider_index; int vddc_index; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;


 int le16_to_cpu (int ) ;
 struct trinity_power_info* trinity_get_pi (struct radeon_device*) ;
 struct trinity_ps* trinity_get_ps (struct radeon_ps*) ;

__attribute__((used)) static void trinity_parse_pplib_clock_info(struct radeon_device *rdev,
        struct radeon_ps *rps, int index,
        union pplib_clock_info *clock_info)
{
 struct trinity_power_info *pi = trinity_get_pi(rdev);
 struct trinity_ps *ps = trinity_get_ps(rps);
 struct trinity_pl *pl = &ps->levels[index];
 u32 sclk;

 sclk = le16_to_cpu(clock_info->sumo.usEngineClockLow);
 sclk |= clock_info->sumo.ucEngineClockHigh << 16;
 pl->sclk = sclk;
 pl->vddc_index = clock_info->sumo.vddcIndex;

 ps->num_levels = index + 1;

 if (pi->enable_sclk_ds) {
  pl->ds_divider_index = 5;
  pl->ss_divider_index = 5;
 }
}
