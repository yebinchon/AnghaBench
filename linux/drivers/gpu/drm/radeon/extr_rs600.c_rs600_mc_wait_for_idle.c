
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {unsigned int usec_timeout; } ;


 scalar_t__ G_000000_MC_IDLE (int ) ;
 int RREG32_MC (int ) ;
 int R_000000_MC_STATUS ;
 int udelay (int) ;

int rs600_mc_wait_for_idle(struct radeon_device *rdev)
{
 unsigned i;

 for (i = 0; i < rdev->usec_timeout; i++) {
  if (G_000000_MC_IDLE(RREG32_MC(R_000000_MC_STATUS)))
   return 0;
  udelay(1);
 }
 return -1;
}
