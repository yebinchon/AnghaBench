
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int usec_timeout; } ;


 int RREG32 (int ) ;
 int SMC_INT_REQ ;
 int WREG32 (int ,int) ;
 int udelay (int) ;

void trinity_acquire_mutex(struct radeon_device *rdev)
{
 int i;

 WREG32(SMC_INT_REQ, 1);
 for (i = 0; i < rdev->usec_timeout; i++) {
  if ((RREG32(SMC_INT_REQ) & 0xffff) == 1)
   break;
  udelay(1);
 }
}
