
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int usec_timeout; } ;


 int RLC_SERDES_MASTER_BUSY_0 ;
 int RLC_SERDES_MASTER_BUSY_1 ;
 scalar_t__ RREG32 (int ) ;
 int udelay (int) ;

__attribute__((used)) static void si_wait_for_rlc_serdes(struct radeon_device *rdev)
{
 int i;

 for (i = 0; i < rdev->usec_timeout; i++) {
  if (RREG32(RLC_SERDES_MASTER_BUSY_0) == 0)
   break;
  udelay(1);
 }

 for (i = 0; i < rdev->usec_timeout; i++) {
  if (RREG32(RLC_SERDES_MASTER_BUSY_1) == 0)
   break;
  udelay(1);
 }
}
