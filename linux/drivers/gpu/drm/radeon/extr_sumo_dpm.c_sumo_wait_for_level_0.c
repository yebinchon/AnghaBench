
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int usec_timeout; } ;


 int CURR_INDEX_MASK ;
 int CURR_SCLK_INDEX_MASK ;
 int RREG32 (int ) ;
 int TARGET_AND_CURRENT_PROFILE_INDEX ;
 int udelay (int) ;

__attribute__((used)) static void sumo_wait_for_level_0(struct radeon_device *rdev)
{
 int i;

 for (i = 0; i < rdev->usec_timeout; i++) {
  if ((RREG32(TARGET_AND_CURRENT_PROFILE_INDEX) & CURR_SCLK_INDEX_MASK) == 0)
   break;
  udelay(1);
 }
 for (i = 0; i < rdev->usec_timeout; i++) {
  if ((RREG32(TARGET_AND_CURRENT_PROFILE_INDEX) & CURR_INDEX_MASK) == 0)
   break;
  udelay(1);
 }
}
