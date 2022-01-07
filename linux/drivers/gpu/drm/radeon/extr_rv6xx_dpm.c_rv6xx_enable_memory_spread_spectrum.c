
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int CG_MPLL_SPREAD_SPECTRUM ;
 int SSEN ;
 int WREG32_P (int ,int ,int ) ;

__attribute__((used)) static void rv6xx_enable_memory_spread_spectrum(struct radeon_device *rdev,
      bool enable)
{
 if (enable)
  WREG32_P(CG_MPLL_SPREAD_SPECTRUM, SSEN, ~SSEN);
 else
  WREG32_P(CG_MPLL_SPREAD_SPECTRUM, 0, ~SSEN);
}
