
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_VCEPLL_FUNC_CNTL ;
 int CG_VCEPLL_FUNC_CNTL_2 ;
 int CG_VCEPLL_FUNC_CNTL_3 ;
 int CG_VCEPLL_FUNC_CNTL_5 ;
 int CG_VCEPLL_SPREAD_SPECTRUM ;
 int ECCLK_SRC_SEL (int) ;
 int ECCLK_SRC_SEL_MASK ;
 int EVCLK_SRC_SEL (int) ;
 int EVCLK_SRC_SEL_MASK ;
 int RESET_ANTI_MUX_MASK ;
 int SSEN_MASK ;
 int VCEPLL_BYPASS_EN_MASK ;
 int VCEPLL_FB_DIV (unsigned int) ;
 int VCEPLL_FB_DIV_MASK ;
 int VCEPLL_PDIV_A (unsigned int) ;
 int VCEPLL_PDIV_A_MASK ;
 int VCEPLL_PDIV_B (unsigned int) ;
 int VCEPLL_PDIV_B_MASK ;
 int VCEPLL_REF_DIV_MASK ;
 int VCEPLL_RESET_MASK ;
 int VCEPLL_SLEEP_MASK ;
 int VCEPLL_VCO_MODE_MASK ;
 int WREG32_SMC_P (int ,int,int) ;
 int mdelay (int) ;
 int radeon_uvd_calc_upll_dividers (struct radeon_device*,int ,int ,int,int,int,int,int ,int,int,unsigned int*,unsigned int*,unsigned int*) ;
 int si_vce_send_vcepll_ctlreq (struct radeon_device*) ;

int si_set_vce_clocks(struct radeon_device *rdev, u32 evclk, u32 ecclk)
{
 unsigned fb_div = 0, evclk_div = 0, ecclk_div = 0;
 int r;


 WREG32_SMC_P(CG_VCEPLL_FUNC_CNTL_2,
       EVCLK_SRC_SEL(1) | ECCLK_SRC_SEL(1),
       ~(EVCLK_SRC_SEL_MASK | ECCLK_SRC_SEL_MASK));


 WREG32_SMC_P(CG_VCEPLL_FUNC_CNTL, VCEPLL_BYPASS_EN_MASK,
       ~VCEPLL_BYPASS_EN_MASK);

 if (!evclk || !ecclk) {

  WREG32_SMC_P(CG_VCEPLL_FUNC_CNTL, VCEPLL_SLEEP_MASK,
        ~VCEPLL_SLEEP_MASK);
  return 0;
 }

 r = radeon_uvd_calc_upll_dividers(rdev, evclk, ecclk, 125000, 250000,
       16384, 0x03FFFFFF, 0, 128, 5,
       &fb_div, &evclk_div, &ecclk_div);
 if (r)
  return r;


 WREG32_SMC_P(CG_VCEPLL_FUNC_CNTL_5, 0, ~RESET_ANTI_MUX_MASK);


 WREG32_SMC_P(CG_VCEPLL_FUNC_CNTL, VCEPLL_VCO_MODE_MASK,
       ~VCEPLL_VCO_MODE_MASK);


 WREG32_SMC_P(CG_VCEPLL_FUNC_CNTL, VCEPLL_SLEEP_MASK,
       ~VCEPLL_SLEEP_MASK);
 WREG32_SMC_P(CG_VCEPLL_FUNC_CNTL, 0, ~VCEPLL_SLEEP_MASK);


 WREG32_SMC_P(CG_VCEPLL_FUNC_CNTL, 0, ~VCEPLL_RESET_MASK);

 mdelay(1);

 r = si_vce_send_vcepll_ctlreq(rdev);
 if (r)
  return r;


 WREG32_SMC_P(CG_VCEPLL_FUNC_CNTL, VCEPLL_RESET_MASK, ~VCEPLL_RESET_MASK);


 WREG32_SMC_P(CG_VCEPLL_SPREAD_SPECTRUM, 0, ~SSEN_MASK);


 WREG32_SMC_P(CG_VCEPLL_FUNC_CNTL_3, VCEPLL_FB_DIV(fb_div), ~VCEPLL_FB_DIV_MASK);


 WREG32_SMC_P(CG_VCEPLL_FUNC_CNTL, 0, ~VCEPLL_REF_DIV_MASK);


 WREG32_SMC_P(CG_VCEPLL_FUNC_CNTL_2,
       VCEPLL_PDIV_A(evclk_div) | VCEPLL_PDIV_B(ecclk_div),
       ~(VCEPLL_PDIV_A_MASK | VCEPLL_PDIV_B_MASK));


 mdelay(15);


 WREG32_SMC_P(CG_VCEPLL_FUNC_CNTL, 0, ~VCEPLL_RESET_MASK);

 mdelay(15);


 WREG32_SMC_P(CG_VCEPLL_FUNC_CNTL, 0, ~VCEPLL_BYPASS_EN_MASK);

 r = si_vce_send_vcepll_ctlreq(rdev);
 if (r)
  return r;


 WREG32_SMC_P(CG_VCEPLL_FUNC_CNTL_2,
       EVCLK_SRC_SEL(16) | ECCLK_SRC_SEL(16),
       ~(EVCLK_SRC_SEL_MASK | ECCLK_SRC_SEL_MASK));

 mdelay(100);

 return 0;
}
