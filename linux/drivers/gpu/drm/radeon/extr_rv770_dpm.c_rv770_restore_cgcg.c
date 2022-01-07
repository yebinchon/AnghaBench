
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int DYN_GFX_CLK_OFF_EN ;
 int GENERAL_PWRMGT ;
 int GLOBAL_PWRMGT_EN ;
 int RREG32 (int ) ;
 int SCLK_PWRMGT_CNTL ;
 int WREG32_P (int ,int,int) ;

void rv770_restore_cgcg(struct radeon_device *rdev)
{
 bool dpm_en = 0, cg_en = 0;

 if (RREG32(GENERAL_PWRMGT) & GLOBAL_PWRMGT_EN)
  dpm_en = 1;
 if (RREG32(SCLK_PWRMGT_CNTL) & DYN_GFX_CLK_OFF_EN)
  cg_en = 1;

 if (dpm_en && !cg_en)
  WREG32_P(SCLK_PWRMGT_CNTL, DYN_GFX_CLK_OFF_EN, ~DYN_GFX_CLK_OFF_EN);
}
