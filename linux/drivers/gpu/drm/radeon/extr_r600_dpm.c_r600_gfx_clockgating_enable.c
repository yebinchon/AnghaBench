
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int usec_timeout; } ;


 int CG_RLC_REQ_AND_RSP ;
 int CG_RLC_RSP_TYPE_MASK ;
 int CG_RLC_RSP_TYPE_SHIFT ;
 int DYN_GFX_CLK_OFF_EN ;
 int GRBM_PWR_CNTL ;
 int RREG32 (int ) ;
 int SCLK_PWRMGT_CNTL ;
 int WREG32 (int ,int) ;
 int WREG32_P (int ,int ,int ) ;
 int udelay (int) ;

void r600_gfx_clockgating_enable(struct radeon_device *rdev, bool enable)
{
 int i;

 if (enable) {
  WREG32_P(SCLK_PWRMGT_CNTL, DYN_GFX_CLK_OFF_EN, ~DYN_GFX_CLK_OFF_EN);
 } else {
  WREG32_P(SCLK_PWRMGT_CNTL, 0, ~DYN_GFX_CLK_OFF_EN);

  WREG32(CG_RLC_REQ_AND_RSP, 0x2);

  for (i = 0; i < rdev->usec_timeout; i++) {
   if (((RREG32(CG_RLC_REQ_AND_RSP) & CG_RLC_RSP_TYPE_MASK) >> CG_RLC_RSP_TYPE_SHIFT) == 1)
    break;
   udelay(1);
  }

  WREG32(CG_RLC_REQ_AND_RSP, 0x0);

  WREG32(GRBM_PWR_CNTL, 0x1);
  RREG32(GRBM_PWR_CNTL);
 }
}
