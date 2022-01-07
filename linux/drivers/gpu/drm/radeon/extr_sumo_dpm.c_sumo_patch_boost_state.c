
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sumo_ps {int flags; int num_levels; TYPE_2__* levels; } ;
struct TYPE_3__ {int sclk_dpm_tdp_limit_boost; int boost_vid_2bit; int boost_sclk; } ;
struct TYPE_4__ {int sclk_dpm_tdp_limit; int vddc_index; int sclk; } ;
struct sumo_power_info {TYPE_1__ sys_info; TYPE_2__ boost_pl; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;


 int SUMO_POWERSTATE_FLAGS_BOOST_STATE ;
 struct sumo_power_info* sumo_get_pi (struct radeon_device*) ;
 struct sumo_ps* sumo_get_ps (struct radeon_ps*) ;

__attribute__((used)) static void sumo_patch_boost_state(struct radeon_device *rdev,
       struct radeon_ps *rps)
{
 struct sumo_power_info *pi = sumo_get_pi(rdev);
 struct sumo_ps *new_ps = sumo_get_ps(rps);

 if (new_ps->flags & SUMO_POWERSTATE_FLAGS_BOOST_STATE) {
  pi->boost_pl = new_ps->levels[new_ps->num_levels - 1];
  pi->boost_pl.sclk = pi->sys_info.boost_sclk;
  pi->boost_pl.vddc_index = pi->sys_info.boost_vid_2bit;
  pi->boost_pl.sclk_dpm_tdp_limit = pi->sys_info.sclk_dpm_tdp_limit_boost;
 }
}
