
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {unsigned int usec_timeout; } ;


 int MC_STATUS ;
 int MC_STATUS_IDLE ;
 int RREG32_MC (int ) ;
 int udelay (int) ;

int rv515_mc_wait_for_idle(struct radeon_device *rdev)
{
 unsigned i;
 uint32_t tmp;

 for (i = 0; i < rdev->usec_timeout; i++) {

  tmp = RREG32_MC(MC_STATUS);
  if (tmp & MC_STATUS_IDLE) {
   return 0;
  }
  udelay(1);
 }
 return -1;
}
