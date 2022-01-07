
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sumo_power_info {scalar_t__ enable_boost; } ;
struct sumo_pl {scalar_t__ ss_divider_index; scalar_t__ ds_divider_index; int sclk_dpm_tdp_limit; int allow_gnb_slow; int vddc_index; int sclk; } ;
struct radeon_device {int dummy; } ;
struct atom_clock_dividers {int post_div; } ;


 int COMPUTE_ENGINE_PLL_PARAM ;
 int DEEP_SLEEP_CNTL ;
 int ENABLE_DS ;
 int RREG32 (int ) ;
 int WREG32_P (int ,int,int) ;
 int radeon_atom_get_clock_dividers (struct radeon_device*,int ,int ,int,struct atom_clock_dividers*) ;
 struct sumo_power_info* sumo_get_pi (struct radeon_device*) ;
 int sumo_set_allos_gnb_slow (struct radeon_device*,int,int ) ;
 int sumo_set_divider_value (struct radeon_device*,int,int ) ;
 int sumo_set_ds_dividers (struct radeon_device*,int,scalar_t__) ;
 int sumo_set_ss_dividers (struct radeon_device*,int,scalar_t__) ;
 int sumo_set_tdp_limit (struct radeon_device*,int,int ) ;
 int sumo_set_vid (struct radeon_device*,int,int ) ;

__attribute__((used)) static void sumo_program_power_level(struct radeon_device *rdev,
         struct sumo_pl *pl, u32 index)
{
 struct sumo_power_info *pi = sumo_get_pi(rdev);
 int ret;
 struct atom_clock_dividers dividers;
 u32 ds_en = RREG32(DEEP_SLEEP_CNTL) & ENABLE_DS;

 ret = radeon_atom_get_clock_dividers(rdev, COMPUTE_ENGINE_PLL_PARAM,
          pl->sclk, 0, &dividers);
 if (ret)
  return;

 sumo_set_divider_value(rdev, index, dividers.post_div);

 sumo_set_vid(rdev, index, pl->vddc_index);

 if (pl->ss_divider_index == 0 || pl->ds_divider_index == 0) {
  if (ds_en)
   WREG32_P(DEEP_SLEEP_CNTL, 0, ~ENABLE_DS);
 } else {
  sumo_set_ss_dividers(rdev, index, pl->ss_divider_index);
  sumo_set_ds_dividers(rdev, index, pl->ds_divider_index);

  if (!ds_en)
   WREG32_P(DEEP_SLEEP_CNTL, ENABLE_DS, ~ENABLE_DS);
 }

 sumo_set_allos_gnb_slow(rdev, index, pl->allow_gnb_slow);

 if (pi->enable_boost)
  sumo_set_tdp_limit(rdev, index, pl->sclk_dpm_tdp_limit);
}
