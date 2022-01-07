
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int RADEON_CRTC2_CRNT_FRAME ;
 int RADEON_CRTC_CRNT_FRAME ;
 int RREG32 (int ) ;

u32 r100_get_vblank_counter(struct radeon_device *rdev, int crtc)
{
 if (crtc == 0)
  return RREG32(RADEON_CRTC_CRNT_FRAME);
 else
  return RREG32(RADEON_CRTC2_CRNT_FRAME);
}
