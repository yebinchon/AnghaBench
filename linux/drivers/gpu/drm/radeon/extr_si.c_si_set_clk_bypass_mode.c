
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct radeon_device {scalar_t__ usec_timeout; } ;


 int CG_SPLL_FUNC_CNTL ;
 int CG_SPLL_FUNC_CNTL_2 ;
 int MPLL_CNTL_MODE ;
 scalar_t__ MPLL_MCLK_SEL ;
 int RREG32 (int ) ;
 scalar_t__ SCLK_MUX_UPDATE ;
 scalar_t__ SPLL_BYPASS_EN ;
 int SPLL_CHG_STATUS ;
 scalar_t__ SPLL_CTLREQ_CHG ;
 int SPLL_STATUS ;
 int WREG32 (int ,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static void si_set_clk_bypass_mode(struct radeon_device *rdev)
{
 u32 tmp, i;

 tmp = RREG32(CG_SPLL_FUNC_CNTL);
 tmp |= SPLL_BYPASS_EN;
 WREG32(CG_SPLL_FUNC_CNTL, tmp);

 tmp = RREG32(CG_SPLL_FUNC_CNTL_2);
 tmp |= SPLL_CTLREQ_CHG;
 WREG32(CG_SPLL_FUNC_CNTL_2, tmp);

 for (i = 0; i < rdev->usec_timeout; i++) {
  if (RREG32(SPLL_STATUS) & SPLL_CHG_STATUS)
   break;
  udelay(1);
 }

 tmp = RREG32(CG_SPLL_FUNC_CNTL_2);
 tmp &= ~(SPLL_CTLREQ_CHG | SCLK_MUX_UPDATE);
 WREG32(CG_SPLL_FUNC_CNTL_2, tmp);

 tmp = RREG32(MPLL_CNTL_MODE);
 tmp &= ~MPLL_MCLK_SEL;
 WREG32(MPLL_CNTL_MODE, tmp);
}
