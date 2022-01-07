
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 scalar_t__ CG_SPLL_SPREAD_SPECTRUM_LOW ;
 int CLKV (int) ;
 int CLKV_MASK ;
 int WREG32_P (scalar_t__,int ,int ) ;

__attribute__((used)) static void rv6xx_set_engine_spread_spectrum_clk_v(struct radeon_device *rdev,
         u32 index, u32 clk_v)
{
 WREG32_P(CG_SPLL_SPREAD_SPECTRUM_LOW + (index * 4),
   CLKV(clk_v), ~CLKV_MASK);
}
