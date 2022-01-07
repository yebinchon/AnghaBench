
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_UPLL_FUNC_CNTL ;
 int CG_UPLL_FUNC_CNTL_2 ;
 int CG_UPLL_FUNC_CNTL_3 ;
 int CG_UPLL_FUNC_CNTL_4 ;
 int CG_UPLL_FUNC_CNTL_5 ;
 int CG_UPLL_SPREAD_SPECTRUM ;
 int DCLK_SRC_SEL (int) ;
 int DCLK_SRC_SEL_MASK ;
 int RESET_ANTI_MUX_MASK ;
 int SSEN_MASK ;
 int UPLL_BYPASS_EN_MASK ;
 int UPLL_FB_DIV (unsigned int) ;
 int UPLL_FB_DIV_MASK ;
 int UPLL_PDIV_A (unsigned int) ;
 int UPLL_PDIV_A_MASK ;
 int UPLL_PDIV_B (unsigned int) ;
 int UPLL_PDIV_B_MASK ;
 int UPLL_REF_DIV_MASK ;
 int UPLL_RESET_MASK ;
 int UPLL_SLEEP_MASK ;
 int UPLL_SPARE_ISPARE9 ;
 int UPLL_VCO_MODE_MASK ;
 int VCLK_SRC_SEL (int) ;
 int VCLK_SRC_SEL_MASK ;
 int WREG32_P (int ,int,int) ;
 int mdelay (int) ;
 int radeon_uvd_calc_upll_dividers (struct radeon_device*,int ,int ,int,int,int,int,int ,int,int,unsigned int*,unsigned int*,unsigned int*) ;
 int radeon_uvd_send_upll_ctlreq (struct radeon_device*,int ) ;

int si_set_uvd_clocks(struct radeon_device *rdev, u32 vclk, u32 dclk)
{
 unsigned fb_div = 0, vclk_div = 0, dclk_div = 0;
 int r;


 WREG32_P(CG_UPLL_FUNC_CNTL_2,
  VCLK_SRC_SEL(1) | DCLK_SRC_SEL(1),
  ~(VCLK_SRC_SEL_MASK | DCLK_SRC_SEL_MASK));


 WREG32_P(CG_UPLL_FUNC_CNTL, UPLL_BYPASS_EN_MASK, ~UPLL_BYPASS_EN_MASK);

 if (!vclk || !dclk) {

  return 0;
 }

 r = radeon_uvd_calc_upll_dividers(rdev, vclk, dclk, 125000, 250000,
       16384, 0x03FFFFFF, 0, 128, 5,
       &fb_div, &vclk_div, &dclk_div);
 if (r)
  return r;


 WREG32_P(CG_UPLL_FUNC_CNTL_5, 0, ~RESET_ANTI_MUX_MASK);


 WREG32_P(CG_UPLL_FUNC_CNTL, UPLL_VCO_MODE_MASK, ~UPLL_VCO_MODE_MASK);


 WREG32_P(CG_UPLL_FUNC_CNTL, 0, ~UPLL_SLEEP_MASK);


 WREG32_P(CG_UPLL_FUNC_CNTL, 0, ~UPLL_RESET_MASK);

 mdelay(1);

 r = radeon_uvd_send_upll_ctlreq(rdev, CG_UPLL_FUNC_CNTL);
 if (r)
  return r;


 WREG32_P(CG_UPLL_FUNC_CNTL, UPLL_RESET_MASK, ~UPLL_RESET_MASK);


 WREG32_P(CG_UPLL_SPREAD_SPECTRUM, 0, ~SSEN_MASK);


 WREG32_P(CG_UPLL_FUNC_CNTL_3, UPLL_FB_DIV(fb_div), ~UPLL_FB_DIV_MASK);


 WREG32_P(CG_UPLL_FUNC_CNTL, 0, ~UPLL_REF_DIV_MASK);

 if (fb_div < 307200)
  WREG32_P(CG_UPLL_FUNC_CNTL_4, 0, ~UPLL_SPARE_ISPARE9);
 else
  WREG32_P(CG_UPLL_FUNC_CNTL_4, UPLL_SPARE_ISPARE9, ~UPLL_SPARE_ISPARE9);


 WREG32_P(CG_UPLL_FUNC_CNTL_2,
  UPLL_PDIV_A(vclk_div) | UPLL_PDIV_B(dclk_div),
  ~(UPLL_PDIV_A_MASK | UPLL_PDIV_B_MASK));


 mdelay(15);


 WREG32_P(CG_UPLL_FUNC_CNTL, 0, ~UPLL_RESET_MASK);

 mdelay(15);


 WREG32_P(CG_UPLL_FUNC_CNTL, 0, ~UPLL_BYPASS_EN_MASK);

 r = radeon_uvd_send_upll_ctlreq(rdev, CG_UPLL_FUNC_CNTL);
 if (r)
  return r;


 WREG32_P(CG_UPLL_FUNC_CNTL_2,
  VCLK_SRC_SEL(2) | DCLK_SRC_SEL(2),
  ~(VCLK_SRC_SEL_MASK | DCLK_SRC_SEL_MASK));

 mdelay(100);

 return 0;
}
