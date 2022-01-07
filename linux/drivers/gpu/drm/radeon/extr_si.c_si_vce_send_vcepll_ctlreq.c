
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int dummy; } ;


 int CG_VCEPLL_FUNC_CNTL ;
 int DRM_ERROR (char*) ;
 int ETIMEDOUT ;
 int RREG32_SMC (int ) ;
 int UPLL_CTLACK2_MASK ;
 int UPLL_CTLACK_MASK ;
 int UPLL_CTLREQ_MASK ;
 int WREG32_SMC_P (int ,int ,int ) ;
 int mdelay (int) ;

__attribute__((used)) static int si_vce_send_vcepll_ctlreq(struct radeon_device *rdev)
{
 unsigned i;


 WREG32_SMC_P(CG_VCEPLL_FUNC_CNTL, 0, ~UPLL_CTLREQ_MASK);

 mdelay(10);


 WREG32_SMC_P(CG_VCEPLL_FUNC_CNTL, UPLL_CTLREQ_MASK, ~UPLL_CTLREQ_MASK);


 for (i = 0; i < 100; ++i) {
  uint32_t mask = UPLL_CTLACK_MASK | UPLL_CTLACK2_MASK;
  if ((RREG32_SMC(CG_VCEPLL_FUNC_CNTL) & mask) == mask)
   break;
  mdelay(10);
 }


 WREG32_SMC_P(CG_VCEPLL_FUNC_CNTL, 0, ~UPLL_CTLREQ_MASK);

 if (i == 100) {
  DRM_ERROR("Timeout setting UVD clocks!\n");
  return -ETIMEDOUT;
 }

 return 0;
}
