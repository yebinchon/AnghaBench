
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;
struct atom_clock_dividers {int post_div; } ;


 int CG_ECLK_CNTL ;
 int CG_ECLK_STATUS ;
 int COMPUTE_ENGINE_PLL_PARAM ;
 int ECLK_DIR_CNTL_EN ;
 int ECLK_DIVIDER_MASK ;
 int ECLK_STATUS ;
 int ETIMEDOUT ;
 int RREG32 (int ) ;
 int WREG32_P (int ,int ,int) ;
 int mdelay (int) ;
 int radeon_atom_get_clock_dividers (struct radeon_device*,int ,int ,int,struct atom_clock_dividers*) ;

int tn_set_vce_clocks(struct radeon_device *rdev, u32 evclk, u32 ecclk)
{
 struct atom_clock_dividers dividers;
 int r, i;

 r = radeon_atom_get_clock_dividers(rdev, COMPUTE_ENGINE_PLL_PARAM,
        ecclk, 0, &dividers);
 if (r)
  return r;

 for (i = 0; i < 100; i++) {
  if (RREG32(CG_ECLK_STATUS) & ECLK_STATUS)
   break;
  mdelay(10);
 }
 if (i == 100)
  return -ETIMEDOUT;

 WREG32_P(CG_ECLK_CNTL, dividers.post_div, ~(ECLK_DIR_CNTL_EN|ECLK_DIVIDER_MASK));

 for (i = 0; i < 100; i++) {
  if (RREG32(CG_ECLK_STATUS) & ECLK_STATUS)
   break;
  mdelay(10);
 }
 if (i == 100)
  return -ETIMEDOUT;

 return 0;
}
