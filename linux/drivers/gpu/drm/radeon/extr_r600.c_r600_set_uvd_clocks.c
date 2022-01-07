
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int reference_freq; } ;
struct TYPE_4__ {TYPE_1__ spll; } ;
struct radeon_device {scalar_t__ family; TYPE_2__ clock; } ;


 int CG_UPLL_FUNC_CNTL ;
 int CG_UPLL_FUNC_CNTL_2 ;
 scalar_t__ CHIP_RS780 ;
 scalar_t__ CHIP_RV670 ;
 int DCLK_SRC_SEL (int) ;
 int DCLK_SRC_SEL_MASK ;
 int GFX_MACRO_BYPASS_CNTL ;
 int UPLL_BYPASS_CNTL ;
 int UPLL_BYPASS_EN_MASK ;
 int UPLL_CTLREQ_MASK ;
 int UPLL_DIVEN2_MASK ;
 int UPLL_DIVEN_MASK ;
 int UPLL_FB_DIV (unsigned int) ;
 int UPLL_FB_DIV_MASK ;
 int UPLL_REFCLK_SRC_SEL_MASK ;
 int UPLL_REF_DIV (unsigned int) ;
 int UPLL_REF_DIV_MASK ;
 int UPLL_RESET_MASK ;
 int UPLL_SLEEP_MASK ;
 int UPLL_SW_HILEN (unsigned int) ;
 int UPLL_SW_HILEN2 (unsigned int) ;
 int UPLL_SW_LOLEN (unsigned int) ;
 int UPLL_SW_LOLEN2 (unsigned int) ;
 int UPLL_SW_MASK ;
 int VCLK_SRC_SEL (int) ;
 int VCLK_SRC_SEL_MASK ;
 int WREG32_P (int ,int,int) ;
 int mdelay (int) ;
 int radeon_uvd_calc_upll_dividers (struct radeon_device*,int ,int ,int,int,unsigned int,int,int,int,int ,unsigned int*,unsigned int*,unsigned int*) ;
 int radeon_uvd_send_upll_ctlreq (struct radeon_device*,int ) ;

int r600_set_uvd_clocks(struct radeon_device *rdev, u32 vclk, u32 dclk)
{
 unsigned fb_div = 0, ref_div, vclk_div = 0, dclk_div = 0;
 int r;


 WREG32_P(CG_UPLL_FUNC_CNTL_2,
   VCLK_SRC_SEL(1) | DCLK_SRC_SEL(1),
   ~(VCLK_SRC_SEL_MASK | DCLK_SRC_SEL_MASK));


 WREG32_P(CG_UPLL_FUNC_CNTL, UPLL_BYPASS_EN_MASK, ~(
   UPLL_RESET_MASK | UPLL_SLEEP_MASK | UPLL_CTLREQ_MASK));

 if (rdev->family >= CHIP_RS780)
  WREG32_P(GFX_MACRO_BYPASS_CNTL, UPLL_BYPASS_CNTL,
    ~UPLL_BYPASS_CNTL);

 if (!vclk || !dclk) {

  WREG32_P(CG_UPLL_FUNC_CNTL, UPLL_SLEEP_MASK, ~UPLL_SLEEP_MASK);
  return 0;
 }

 if (rdev->clock.spll.reference_freq == 10000)
  ref_div = 34;
 else
  ref_div = 4;

 r = radeon_uvd_calc_upll_dividers(rdev, vclk, dclk, 50000, 160000,
       ref_div + 1, 0xFFF, 2, 30, ~0,
       &fb_div, &vclk_div, &dclk_div);
 if (r)
  return r;

 if (rdev->family >= CHIP_RV670 && rdev->family < CHIP_RS780)
  fb_div >>= 1;
 else
  fb_div |= 1;

 r = radeon_uvd_send_upll_ctlreq(rdev, CG_UPLL_FUNC_CNTL);
 if (r)
  return r;


 WREG32_P(CG_UPLL_FUNC_CNTL, UPLL_RESET_MASK, ~UPLL_RESET_MASK);


 if (rdev->family >= CHIP_RS780)
  WREG32_P(CG_UPLL_FUNC_CNTL, UPLL_REFCLK_SRC_SEL_MASK,
    ~UPLL_REFCLK_SRC_SEL_MASK);


 WREG32_P(CG_UPLL_FUNC_CNTL,
   UPLL_FB_DIV(fb_div) |
   UPLL_REF_DIV(ref_div),
   ~(UPLL_FB_DIV_MASK | UPLL_REF_DIV_MASK));
 WREG32_P(CG_UPLL_FUNC_CNTL_2,
   UPLL_SW_HILEN(vclk_div >> 1) |
   UPLL_SW_LOLEN((vclk_div >> 1) + (vclk_div & 1)) |
   UPLL_SW_HILEN2(dclk_div >> 1) |
   UPLL_SW_LOLEN2((dclk_div >> 1) + (dclk_div & 1)) |
   UPLL_DIVEN_MASK | UPLL_DIVEN2_MASK,
   ~UPLL_SW_MASK);


 mdelay(15);


 WREG32_P(CG_UPLL_FUNC_CNTL, 0, ~UPLL_RESET_MASK);

 mdelay(15);


 WREG32_P(CG_UPLL_FUNC_CNTL, 0, ~UPLL_BYPASS_EN_MASK);

 if (rdev->family >= CHIP_RS780)
  WREG32_P(GFX_MACRO_BYPASS_CNTL, 0, ~UPLL_BYPASS_CNTL);

 r = radeon_uvd_send_upll_ctlreq(rdev, CG_UPLL_FUNC_CNTL);
 if (r)
  return r;


 WREG32_P(CG_UPLL_FUNC_CNTL_2,
   VCLK_SRC_SEL(2) | DCLK_SRC_SEL(2),
   ~(VCLK_SRC_SEL_MASK | DCLK_SRC_SEL_MASK));

 mdelay(100);

 return 0;
}
