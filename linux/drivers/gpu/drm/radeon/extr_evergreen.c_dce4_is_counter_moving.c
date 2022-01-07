
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct radeon_device {int dummy; } ;


 scalar_t__ EVERGREEN_CRTC_STATUS_POSITION ;
 scalar_t__ RREG32 (scalar_t__) ;
 scalar_t__* crtc_offsets ;

__attribute__((used)) static bool dce4_is_counter_moving(struct radeon_device *rdev, int crtc)
{
 u32 pos1, pos2;

 pos1 = RREG32(EVERGREEN_CRTC_STATUS_POSITION + crtc_offsets[crtc]);
 pos2 = RREG32(EVERGREEN_CRTC_STATUS_POSITION + crtc_offsets[crtc]);

 if (pos1 != pos2)
  return 1;
 else
  return 0;
}
