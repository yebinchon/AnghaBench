
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct radeon_crtc** crtcs; } ;
struct radeon_device {TYPE_1__ mode_info; } ;
struct radeon_crtc {scalar_t__ crtc_offset; } ;


 int EVERGREEN_GRPH_SURFACE_UPDATE_PENDING ;
 scalar_t__ EVERGREEN_GRPH_UPDATE ;
 int RREG32 (scalar_t__) ;

bool evergreen_page_flip_pending(struct radeon_device *rdev, int crtc_id)
{
 struct radeon_crtc *radeon_crtc = rdev->mode_info.crtcs[crtc_id];


 return !!(RREG32(EVERGREEN_GRPH_UPDATE + radeon_crtc->crtc_offset) &
  EVERGREEN_GRPH_SURFACE_UPDATE_PENDING);
}
