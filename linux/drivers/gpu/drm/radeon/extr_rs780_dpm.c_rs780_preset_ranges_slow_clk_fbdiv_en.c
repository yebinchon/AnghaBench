
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int FVTHROT_SLOW_CLK_FEEDBACK_DIV_REG1 ;
 int RANGE0_SLOW_CLK_FEEDBACK_DIV (int ) ;
 int RANGE0_SLOW_CLK_FEEDBACK_DIV_MASK ;
 int RANGE_SLOW_CLK_FEEDBACK_DIV_EN ;
 int RS780_SLOWCLKFEEDBACKDIV_DFLT ;
 int WREG32_P (int ,int ,int ) ;

__attribute__((used)) static void rs780_preset_ranges_slow_clk_fbdiv_en(struct radeon_device *rdev)
{
 WREG32_P(FVTHROT_SLOW_CLK_FEEDBACK_DIV_REG1, RANGE_SLOW_CLK_FEEDBACK_DIV_EN,
   ~RANGE_SLOW_CLK_FEEDBACK_DIV_EN);

 WREG32_P(FVTHROT_SLOW_CLK_FEEDBACK_DIV_REG1,
   RANGE0_SLOW_CLK_FEEDBACK_DIV(RS780_SLOWCLKFEEDBACKDIV_DFLT),
   ~RANGE0_SLOW_CLK_FEEDBACK_DIV_MASK);
}
