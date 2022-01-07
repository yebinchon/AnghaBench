
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;
struct atom_clock_dividers {int post_div; } ;


 int COMPUTE_ENGINE_PLL_PARAM ;
 int DCLK_DIR_CNTL_EN ;
 int DCLK_DIVIDER_MASK ;
 int DCLK_STATUS ;
 int ETIMEDOUT ;
 int RREG32 (int ) ;
 int WREG32_P (int ,int ,int) ;
 int mdelay (int) ;
 int radeon_atom_get_clock_dividers (struct radeon_device*,int ,int ,int,struct atom_clock_dividers*) ;

__attribute__((used)) static int sumo_set_uvd_clock(struct radeon_device *rdev, u32 clock,
         u32 cntl_reg, u32 status_reg)
{
 int r, i;
 struct atom_clock_dividers dividers;

 r = radeon_atom_get_clock_dividers(rdev, COMPUTE_ENGINE_PLL_PARAM,
        clock, 0, &dividers);
 if (r)
  return r;

 WREG32_P(cntl_reg, dividers.post_div, ~(DCLK_DIR_CNTL_EN|DCLK_DIVIDER_MASK));

 for (i = 0; i < 100; i++) {
  if (RREG32(status_reg) & DCLK_STATUS)
   break;
  mdelay(10);
 }
 if (i == 100)
  return -ETIMEDOUT;

 return 0;
}
