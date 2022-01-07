
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {unsigned int usec_timeout; } ;


 int G_000E40_CP_CMDSTRM_BUSY (int ) ;
 int RREG32 (int ) ;
 int R_000E40_RBBM_STATUS ;
 int udelay (int) ;

__attribute__((used)) static int r100_cp_wait_for_idle(struct radeon_device *rdev)
{
 unsigned i;
 u32 tmp;

 for (i = 0; i < rdev->usec_timeout; i++) {
  tmp = RREG32(R_000E40_RBBM_STATUS);
  if (!G_000E40_CP_CMDSTRM_BUSY(tmp)) {
   return 0;
  }
  udelay(1);
 }
 return -1;
}
