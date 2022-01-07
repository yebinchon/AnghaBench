
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int DYN_GFX_CLK_OFF_EN ;
 int GB_ADDR_CONFIG ;
 int GFX_CLK_FORCE_ON ;
 int RREG32 (int ) ;
 int SCLK_PWRMGT_CNTL ;
 int WREG32_P (int ,int ,int ) ;

__attribute__((used)) static void trinity_gfx_clockgating_enable(struct radeon_device *rdev,
        bool enable)
{
 if (enable) {
  WREG32_P(SCLK_PWRMGT_CNTL, DYN_GFX_CLK_OFF_EN, ~DYN_GFX_CLK_OFF_EN);
 } else {
  WREG32_P(SCLK_PWRMGT_CNTL, 0, ~DYN_GFX_CLK_OFF_EN);
  WREG32_P(SCLK_PWRMGT_CNTL, GFX_CLK_FORCE_ON, ~GFX_CLK_FORCE_ON);
  WREG32_P(SCLK_PWRMGT_CNTL, 0, ~GFX_CLK_FORCE_ON);
  RREG32(GB_ADDR_CONFIG);
 }
}
