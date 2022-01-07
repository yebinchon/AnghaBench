
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_MPLL_SPREAD_SPECTRUM ;
 int CLKS (int ) ;
 int CLKS_MASK ;
 int WREG32_P (int ,int ,int ) ;

__attribute__((used)) static void rv6xx_set_memory_spread_spectrum_clk_s(struct radeon_device *rdev,
         u32 clk_s)
{
 WREG32_P(CG_MPLL_SPREAD_SPECTRUM, CLKS(clk_s), ~CLKS_MASK);
}
