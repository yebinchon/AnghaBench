
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct evergreen_power_info {scalar_t__ light_sleep; } ;


 int CG_CGLS_TILE_0 ;
 int CG_CGLS_TILE_1 ;
 int CG_CGLS_TILE_10 ;
 int CG_CGLS_TILE_11 ;
 int CG_CGLS_TILE_2 ;
 int CG_CGLS_TILE_3 ;
 int CG_CGLS_TILE_4 ;
 int CG_CGLS_TILE_5 ;
 int CG_CGLS_TILE_6 ;
 int CG_CGLS_TILE_7 ;
 int CG_CGLS_TILE_8 ;
 int CG_CGLS_TILE_9 ;
 int DYN_GFX_CLK_OFF_EN ;
 int DYN_LIGHT_SLEEP_EN ;
 int GB_ADDR_CONFIG ;
 int GFX_CLK_FORCE_ON ;
 int GRBM_GFX_INDEX ;
 int RREG32 (int ) ;
 int SCLK_PWRMGT_CNTL ;
 int WREG32 (int ,int) ;
 int WREG32_CG (int ,int) ;
 int WREG32_P (int ,int ,int ) ;
 struct evergreen_power_info* evergreen_get_pi (struct radeon_device*) ;

__attribute__((used)) static void cypress_gfx_clock_gating_enable(struct radeon_device *rdev,
         bool enable)
{
 struct evergreen_power_info *eg_pi = evergreen_get_pi(rdev);

 if (enable) {
  if (eg_pi->light_sleep) {
   WREG32(GRBM_GFX_INDEX, 0xC0000000);

   WREG32_CG(CG_CGLS_TILE_0, 0xFFFFFFFF);
   WREG32_CG(CG_CGLS_TILE_1, 0xFFFFFFFF);
   WREG32_CG(CG_CGLS_TILE_2, 0xFFFFFFFF);
   WREG32_CG(CG_CGLS_TILE_3, 0xFFFFFFFF);
   WREG32_CG(CG_CGLS_TILE_4, 0xFFFFFFFF);
   WREG32_CG(CG_CGLS_TILE_5, 0xFFFFFFFF);
   WREG32_CG(CG_CGLS_TILE_6, 0xFFFFFFFF);
   WREG32_CG(CG_CGLS_TILE_7, 0xFFFFFFFF);
   WREG32_CG(CG_CGLS_TILE_8, 0xFFFFFFFF);
   WREG32_CG(CG_CGLS_TILE_9, 0xFFFFFFFF);
   WREG32_CG(CG_CGLS_TILE_10, 0xFFFFFFFF);
   WREG32_CG(CG_CGLS_TILE_11, 0xFFFFFFFF);

   WREG32_P(SCLK_PWRMGT_CNTL, DYN_LIGHT_SLEEP_EN, ~DYN_LIGHT_SLEEP_EN);
  }
  WREG32_P(SCLK_PWRMGT_CNTL, DYN_GFX_CLK_OFF_EN, ~DYN_GFX_CLK_OFF_EN);
 } else {
  WREG32_P(SCLK_PWRMGT_CNTL, 0, ~DYN_GFX_CLK_OFF_EN);
  WREG32_P(SCLK_PWRMGT_CNTL, GFX_CLK_FORCE_ON, ~GFX_CLK_FORCE_ON);
  WREG32_P(SCLK_PWRMGT_CNTL, 0, ~GFX_CLK_FORCE_ON);
  RREG32(GB_ADDR_CONFIG);

  if (eg_pi->light_sleep) {
   WREG32_P(SCLK_PWRMGT_CNTL, 0, ~DYN_LIGHT_SLEEP_EN);

   WREG32(GRBM_GFX_INDEX, 0xC0000000);

   WREG32_CG(CG_CGLS_TILE_0, 0);
   WREG32_CG(CG_CGLS_TILE_1, 0);
   WREG32_CG(CG_CGLS_TILE_2, 0);
   WREG32_CG(CG_CGLS_TILE_3, 0);
   WREG32_CG(CG_CGLS_TILE_4, 0);
   WREG32_CG(CG_CGLS_TILE_5, 0);
   WREG32_CG(CG_CGLS_TILE_6, 0);
   WREG32_CG(CG_CGLS_TILE_7, 0);
   WREG32_CG(CG_CGLS_TILE_8, 0);
   WREG32_CG(CG_CGLS_TILE_9, 0);
   WREG32_CG(CG_CGLS_TILE_10, 0);
   WREG32_CG(CG_CGLS_TILE_11, 0);
  }
 }
}
