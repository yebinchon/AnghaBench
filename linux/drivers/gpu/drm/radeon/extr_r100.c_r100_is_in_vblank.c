
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int RADEON_CRTC2_STATUS ;
 int RADEON_CRTC2_VBLANK_CUR ;
 int RADEON_CRTC_STATUS ;
 int RADEON_CRTC_VBLANK_CUR ;
 int RREG32 (int ) ;

__attribute__((used)) static bool r100_is_in_vblank(struct radeon_device *rdev, int crtc)
{
 if (crtc == 0) {
  if (RREG32(RADEON_CRTC_STATUS) & RADEON_CRTC_VBLANK_CUR)
   return 1;
  else
   return 0;
 } else {
  if (RREG32(RADEON_CRTC2_STATUS) & RADEON_CRTC2_VBLANK_CUR)
   return 1;
  else
   return 0;
 }
}
