
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int usec_timeout; } ;


 int LB_SYNC_RESET_SEL ;
 int LB_SYNC_RESET_SEL_MASK ;
 int RREG32 (int ) ;
 int r7xx_stop_smc (struct radeon_device*) ;
 int udelay (int) ;

__attribute__((used)) static void ni_stop_smc(struct radeon_device *rdev)
{
 u32 tmp;
 int i;

 for (i = 0; i < rdev->usec_timeout; i++) {
  tmp = RREG32(LB_SYNC_RESET_SEL) & LB_SYNC_RESET_SEL_MASK;
  if (tmp != 1)
   break;
  udelay(1);
 }

 udelay(100);

 r7xx_stop_smc(rdev);
}
