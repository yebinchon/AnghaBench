
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct trinity_power_info {int * at; } ;
struct trinity_pl {int vce_wm; int display_wm; int force_nbp_state; int allow_gnb_slow; int ds_divider_index; int ss_divider_index; int vddc_index; int sclk; } ;
struct radeon_device {int dummy; } ;


 size_t SUMO_MAX_HARDWARE_POWERLEVELS ;
 struct trinity_power_info* trinity_get_pi (struct radeon_device*) ;
 int trinity_set_allos_gnb_slow (struct radeon_device*,size_t,int ) ;
 int trinity_set_at (struct radeon_device*,size_t,int ) ;
 int trinity_set_display_wm (struct radeon_device*,size_t,int ) ;
 int trinity_set_divider_value (struct radeon_device*,size_t,int ) ;
 int trinity_set_ds_dividers (struct radeon_device*,size_t,int ) ;
 int trinity_set_force_nbp_state (struct radeon_device*,size_t,int ) ;
 int trinity_set_ss_dividers (struct radeon_device*,size_t,int ) ;
 int trinity_set_vce_wm (struct radeon_device*,size_t,int ) ;
 int trinity_set_vid (struct radeon_device*,size_t,int ) ;

__attribute__((used)) static void trinity_program_power_level(struct radeon_device *rdev,
     struct trinity_pl *pl, u32 index)
{
 struct trinity_power_info *pi = trinity_get_pi(rdev);

 if (index >= SUMO_MAX_HARDWARE_POWERLEVELS)
  return;

 trinity_set_divider_value(rdev, index, pl->sclk);
 trinity_set_vid(rdev, index, pl->vddc_index);
 trinity_set_ss_dividers(rdev, index, pl->ss_divider_index);
 trinity_set_ds_dividers(rdev, index, pl->ds_divider_index);
 trinity_set_allos_gnb_slow(rdev, index, pl->allow_gnb_slow);
 trinity_set_force_nbp_state(rdev, index, pl->force_nbp_state);
 trinity_set_display_wm(rdev, index, pl->display_wm);
 trinity_set_vce_wm(rdev, index, pl->vce_wm);
 trinity_set_at(rdev, index, pi->at[index]);
}
