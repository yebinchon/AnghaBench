
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 scalar_t__ SCLK_FREQ_SETTING_STEP_0_PART2 ;
 int STEP_0_SPLL_STEP_ENABLE ;
 int WREG32_P (scalar_t__,int ,int ) ;

void r600_engine_clock_entry_enable_pulse_skipping(struct radeon_device *rdev,
         u32 index, bool enable)
{
 if (enable)
  WREG32_P(SCLK_FREQ_SETTING_STEP_0_PART2 + (index * 4 * 2),
    STEP_0_SPLL_STEP_ENABLE, ~STEP_0_SPLL_STEP_ENABLE);
 else
  WREG32_P(SCLK_FREQ_SETTING_STEP_0_PART2 + (index * 4 * 2),
    0, ~STEP_0_SPLL_STEP_ENABLE);
}
