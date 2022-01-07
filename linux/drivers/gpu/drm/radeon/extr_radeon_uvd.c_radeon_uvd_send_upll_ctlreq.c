
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int dummy; } ;


 int DRM_ERROR (char*) ;
 int ETIMEDOUT ;
 int RREG32 (unsigned int) ;
 int UPLL_CTLACK2_MASK ;
 int UPLL_CTLACK_MASK ;
 int UPLL_CTLREQ_MASK ;
 int WREG32_P (unsigned int,int ,int ) ;
 int mdelay (int) ;

int radeon_uvd_send_upll_ctlreq(struct radeon_device *rdev,
    unsigned cg_upll_func_cntl)
{
 unsigned i;


 WREG32_P(cg_upll_func_cntl, 0, ~UPLL_CTLREQ_MASK);

 mdelay(10);


 WREG32_P(cg_upll_func_cntl, UPLL_CTLREQ_MASK, ~UPLL_CTLREQ_MASK);


 for (i = 0; i < 100; ++i) {
  uint32_t mask = UPLL_CTLACK_MASK | UPLL_CTLACK2_MASK;
  if ((RREG32(cg_upll_func_cntl) & mask) == mask)
   break;
  mdelay(10);
 }


 WREG32_P(cg_upll_func_cntl, 0, ~UPLL_CTLREQ_MASK);

 if (i == 100) {
  DRM_ERROR("Timeout setting UVD clocks!\n");
  return -ETIMEDOUT;
 }

 return 0;
}
