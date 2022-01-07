
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct radeon_device {int dummy; } ;


 scalar_t__ RREG32 (scalar_t__) ;
 scalar_t__ SDMA0_ME_CNTL ;
 scalar_t__ SDMA0_REGISTER_OFFSET ;
 scalar_t__ SDMA1_REGISTER_OFFSET ;
 scalar_t__ SDMA_HALT ;
 int WREG32 (scalar_t__,scalar_t__) ;
 int cik_sdma_ctx_switch_enable (struct radeon_device*,int) ;
 int cik_sdma_gfx_stop (struct radeon_device*) ;
 int cik_sdma_rlc_stop (struct radeon_device*) ;

void cik_sdma_enable(struct radeon_device *rdev, bool enable)
{
 u32 me_cntl, reg_offset;
 int i;

 if (enable == 0) {
  cik_sdma_gfx_stop(rdev);
  cik_sdma_rlc_stop(rdev);
 }

 for (i = 0; i < 2; i++) {
  if (i == 0)
   reg_offset = SDMA0_REGISTER_OFFSET;
  else
   reg_offset = SDMA1_REGISTER_OFFSET;
  me_cntl = RREG32(SDMA0_ME_CNTL + reg_offset);
  if (enable)
   me_cntl &= ~SDMA_HALT;
  else
   me_cntl |= SDMA_HALT;
  WREG32(SDMA0_ME_CNTL + reg_offset, me_cntl);
 }

 cik_sdma_ctx_switch_enable(rdev, enable);
}
