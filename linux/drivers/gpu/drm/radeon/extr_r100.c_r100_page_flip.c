
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct TYPE_2__ {struct radeon_crtc** crtcs; } ;
struct radeon_device {int usec_timeout; TYPE_1__ mode_info; } ;
struct radeon_crtc {scalar_t__ crtc_offset; } ;


 int DRM_DEBUG (char*) ;
 scalar_t__ RADEON_CRTC_OFFSET ;
 int RADEON_CRTC_OFFSET__GUI_TRIG_OFFSET ;
 int RADEON_CRTC_OFFSET__OFFSET_LOCK ;
 int RREG32 (scalar_t__) ;
 int WREG32 (scalar_t__,int) ;
 int udelay (int) ;

void r100_page_flip(struct radeon_device *rdev, int crtc_id, u64 crtc_base, bool async)
{
 struct radeon_crtc *radeon_crtc = rdev->mode_info.crtcs[crtc_id];
 u32 tmp = ((u32)crtc_base) | RADEON_CRTC_OFFSET__OFFSET_LOCK;
 int i;



 WREG32(RADEON_CRTC_OFFSET + radeon_crtc->crtc_offset, tmp);


 for (i = 0; i < rdev->usec_timeout; i++) {
  if (RREG32(RADEON_CRTC_OFFSET + radeon_crtc->crtc_offset) & RADEON_CRTC_OFFSET__GUI_TRIG_OFFSET)
   break;
  udelay(1);
 }
 DRM_DEBUG("Update pending now high. Unlocking vupdate_lock.\n");


 tmp &= ~RADEON_CRTC_OFFSET__OFFSET_LOCK;
 WREG32(RADEON_CRTC_OFFSET + radeon_crtc->crtc_offset, tmp);

}
