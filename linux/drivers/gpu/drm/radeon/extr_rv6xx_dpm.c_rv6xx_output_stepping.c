
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct rv6xx_sclk_stepping {int post_divider; int vco_frequency; } ;
struct rv6xx_power_info {int spll_ref_div; int fb_div_scale; } ;
struct TYPE_3__ {int reference_freq; } ;
struct TYPE_4__ {TYPE_1__ spll; } ;
struct radeon_device {TYPE_2__ clock; } ;


 int R600_SPLLSTEPTIME_DFLT ;
 int R600_SPLLSTEPUNIT_DFLT ;
 int r600_engine_clock_entry_enable (struct radeon_device*,int,int) ;
 int r600_engine_clock_entry_enable_post_divider (struct radeon_device*,int,int) ;
 int r600_engine_clock_entry_enable_pulse_skipping (struct radeon_device*,int,int) ;
 int r600_engine_clock_entry_set_feedback_divider (struct radeon_device*,int,int) ;
 int r600_engine_clock_entry_set_post_divider (struct radeon_device*,int,int) ;
 int r600_engine_clock_entry_set_reference_divider (struct radeon_device*,int,int) ;
 int r600_engine_clock_entry_set_step_time (struct radeon_device*,int,int) ;
 struct rv6xx_power_info* rv6xx_get_pi (struct radeon_device*) ;
 int rv6xx_scale_count_given_unit (struct radeon_device*,int,int ) ;

__attribute__((used)) static void rv6xx_output_stepping(struct radeon_device *rdev,
      u32 step_index, struct rv6xx_sclk_stepping *step)
{
 struct rv6xx_power_info *pi = rv6xx_get_pi(rdev);
 u32 ref_clk = rdev->clock.spll.reference_freq;
 u32 fb_divider;
 u32 spll_step_count = rv6xx_scale_count_given_unit(rdev,
          R600_SPLLSTEPTIME_DFLT *
          pi->spll_ref_div,
          R600_SPLLSTEPUNIT_DFLT);

 r600_engine_clock_entry_enable(rdev, step_index, 1);
 r600_engine_clock_entry_enable_pulse_skipping(rdev, step_index, 0);

 if (step->post_divider == 1)
  r600_engine_clock_entry_enable_post_divider(rdev, step_index, 0);
 else {
  u32 lo_len = (step->post_divider - 2) / 2;
  u32 hi_len = step->post_divider - 2 - lo_len;

  r600_engine_clock_entry_enable_post_divider(rdev, step_index, 1);
  r600_engine_clock_entry_set_post_divider(rdev, step_index, (hi_len << 4) | lo_len);
 }

 fb_divider = ((step->vco_frequency * pi->spll_ref_div) / ref_clk) >>
  pi->fb_div_scale;

 r600_engine_clock_entry_set_reference_divider(rdev, step_index,
            pi->spll_ref_div - 1);
 r600_engine_clock_entry_set_feedback_divider(rdev, step_index, fb_divider);
 r600_engine_clock_entry_set_step_time(rdev, step_index, spll_step_count);

}
