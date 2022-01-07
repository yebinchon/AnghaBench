
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 scalar_t__ SCLK_FREQ_SETTING_STEP_0_PART1 ;
 int STEP_0_SPLL_STEP_TIME (int) ;
 int STEP_0_SPLL_STEP_TIME_MASK ;
 int WREG32_P (scalar_t__,int ,int ) ;

void r600_engine_clock_entry_set_step_time(struct radeon_device *rdev,
        u32 index, u32 step_time)
{
 WREG32_P(SCLK_FREQ_SETTING_STEP_0_PART1 + (index * 4 * 2),
   STEP_0_SPLL_STEP_TIME(step_time), ~STEP_0_SPLL_STEP_TIME_MASK);
}
