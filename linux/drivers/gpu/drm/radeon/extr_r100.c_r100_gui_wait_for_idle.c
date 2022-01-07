
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {unsigned int usec_timeout; } ;


 int RADEON_RBBM_ACTIVE ;
 int RADEON_RBBM_STATUS ;
 int RREG32 (int ) ;
 int pr_warn (char*) ;
 scalar_t__ r100_rbbm_fifo_wait_for_entry (struct radeon_device*,int) ;
 int udelay (int) ;

int r100_gui_wait_for_idle(struct radeon_device *rdev)
{
 unsigned i;
 uint32_t tmp;

 if (r100_rbbm_fifo_wait_for_entry(rdev, 64)) {
  pr_warn("radeon: wait for empty RBBM fifo failed! Bad things might happen.\n");
 }
 for (i = 0; i < rdev->usec_timeout; i++) {
  tmp = RREG32(RADEON_RBBM_STATUS);
  if (!(tmp & RADEON_RBBM_ACTIVE)) {
   return 0;
  }
  udelay(1);
 }
 return -1;
}
