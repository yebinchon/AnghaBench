
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int usec_timeout; } ;


 int CG_SPLL_FUNC_CNTL ;
 int RREG32 (int ) ;
 int SPLL_CHG_STATUS ;
 int udelay (int) ;

void r600_wait_for_spll_change(struct radeon_device *rdev)
{
 int i;

 for (i = 0; i < rdev->usec_timeout; i++) {
  if (RREG32(CG_SPLL_FUNC_CNTL) & SPLL_CHG_STATUS)
   break;
  udelay(1);
 }
}
