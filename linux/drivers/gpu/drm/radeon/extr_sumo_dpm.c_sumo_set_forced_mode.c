
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int CG_SCLK_DPM_CTRL_3 ;
 int FORCE_SCLK_STATE_EN ;
 int WREG32_P (int ,int ,int ) ;

__attribute__((used)) static void sumo_set_forced_mode(struct radeon_device *rdev, bool enable)
{
 if (enable)
  WREG32_P(CG_SCLK_DPM_CTRL_3, FORCE_SCLK_STATE_EN, ~FORCE_SCLK_STATE_EN);
 else
  WREG32_P(CG_SCLK_DPM_CTRL_3, 0, ~FORCE_SCLK_STATE_EN);
}
