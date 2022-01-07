
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ucEngineClockHigh; int vddcIndex; int usEngineClockLow; } ;
union pplib_clock_info {TYPE_1__ sumo; } ;
typedef int u32 ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct kv_ps {int num_levels; struct kv_pl* levels; } ;
struct kv_power_info {scalar_t__ caps_sclk_ds; } ;
struct kv_pl {int sclk; int ds_divider_index; int ss_divider_index; int vddc_index; } ;


 struct kv_power_info* kv_get_pi (struct radeon_device*) ;
 struct kv_ps* kv_get_ps (struct radeon_ps*) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static void kv_parse_pplib_clock_info(struct radeon_device *rdev,
          struct radeon_ps *rps, int index,
     union pplib_clock_info *clock_info)
{
 struct kv_power_info *pi = kv_get_pi(rdev);
 struct kv_ps *ps = kv_get_ps(rps);
 struct kv_pl *pl = &ps->levels[index];
 u32 sclk;

 sclk = le16_to_cpu(clock_info->sumo.usEngineClockLow);
 sclk |= clock_info->sumo.ucEngineClockHigh << 16;
 pl->sclk = sclk;
 pl->vddc_index = clock_info->sumo.vddcIndex;

 ps->num_levels = index + 1;

 if (pi->caps_sclk_ds) {
  pl->ds_divider_index = 5;
  pl->ss_divider_index = 5;
 }
}
