
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int CG_SPLL_FUNC_CNTL ;
 int SPLL_BYPASS_EN ;
 int WREG32_P (int ,int ,int ) ;

void r600_enable_spll_bypass(struct radeon_device *rdev, bool enable)
{
 if (enable)
  WREG32_P(CG_SPLL_FUNC_CNTL, SPLL_BYPASS_EN, ~SPLL_BYPASS_EN);
 else
  WREG32_P(CG_SPLL_FUNC_CNTL, 0, ~SPLL_BYPASS_EN);
}
