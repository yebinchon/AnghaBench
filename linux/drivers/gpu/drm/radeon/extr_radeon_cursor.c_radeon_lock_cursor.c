
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct radeon_device {int dummy; } ;
struct radeon_crtc {scalar_t__ crtc_offset; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct TYPE_2__ {struct radeon_device* dev_private; } ;


 scalar_t__ ASIC_IS_AVIVO (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE4 (struct radeon_device*) ;
 int AVIVO_D1CURSOR_UPDATE_LOCK ;
 scalar_t__ AVIVO_D1CUR_UPDATE ;
 int EVERGREEN_CURSOR_UPDATE_LOCK ;
 scalar_t__ EVERGREEN_CUR_UPDATE ;
 int RADEON_CUR_LOCK ;
 scalar_t__ RADEON_CUR_OFFSET ;
 int RREG32 (scalar_t__) ;
 int WREG32 (scalar_t__,int ) ;
 struct radeon_crtc* to_radeon_crtc (struct drm_crtc*) ;

__attribute__((used)) static void radeon_lock_cursor(struct drm_crtc *crtc, bool lock)
{
 struct radeon_device *rdev = crtc->dev->dev_private;
 struct radeon_crtc *radeon_crtc = to_radeon_crtc(crtc);
 uint32_t cur_lock;

 if (ASIC_IS_DCE4(rdev)) {
  cur_lock = RREG32(EVERGREEN_CUR_UPDATE + radeon_crtc->crtc_offset);
  if (lock)
   cur_lock |= EVERGREEN_CURSOR_UPDATE_LOCK;
  else
   cur_lock &= ~EVERGREEN_CURSOR_UPDATE_LOCK;
  WREG32(EVERGREEN_CUR_UPDATE + radeon_crtc->crtc_offset, cur_lock);
 } else if (ASIC_IS_AVIVO(rdev)) {
  cur_lock = RREG32(AVIVO_D1CUR_UPDATE + radeon_crtc->crtc_offset);
  if (lock)
   cur_lock |= AVIVO_D1CURSOR_UPDATE_LOCK;
  else
   cur_lock &= ~AVIVO_D1CURSOR_UPDATE_LOCK;
  WREG32(AVIVO_D1CUR_UPDATE + radeon_crtc->crtc_offset, cur_lock);
 } else {
  cur_lock = RREG32(RADEON_CUR_OFFSET + radeon_crtc->crtc_offset);
  if (lock)
   cur_lock |= RADEON_CUR_LOCK;
  else
   cur_lock &= ~RADEON_CUR_LOCK;
  WREG32(RADEON_CUR_OFFSET + radeon_crtc->crtc_offset, cur_lock);
 }
}
