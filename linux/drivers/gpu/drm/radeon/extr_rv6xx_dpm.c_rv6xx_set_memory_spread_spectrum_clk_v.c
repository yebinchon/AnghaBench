
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_MPLL_SPREAD_SPECTRUM ;
 int CLKV (int ) ;
 int CLKV_MASK ;
 int WREG32_P (int ,int ,int ) ;

__attribute__((used)) static void rv6xx_set_memory_spread_spectrum_clk_v(struct radeon_device *rdev,
         u32 clk_v)
{
 WREG32_P(CG_MPLL_SPREAD_SPECTRUM, CLKV(clk_v), ~CLKV_MASK);
}
