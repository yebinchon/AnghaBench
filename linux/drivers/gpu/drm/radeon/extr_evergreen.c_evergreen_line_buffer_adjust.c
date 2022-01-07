
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct radeon_device {int usec_timeout; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;
struct radeon_crtc {int crtc_id; int crtc_offset; TYPE_1__ base; } ;
struct drm_display_mode {int dummy; } ;


 scalar_t__ ASIC_IS_DCE41 (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE5 (struct radeon_device*) ;
 int DC_LB_MEMORY_SPLIT ;
 int DMIF_BUFFERS_ALLOCATED (int) ;
 int DMIF_BUFFERS_ALLOCATED_COMPLETED ;
 int PIPE0_DMIF_BUFFER_CONTROL ;
 int RREG32 (int) ;
 int WREG32 (int,int) ;
 int udelay (int) ;

__attribute__((used)) static u32 evergreen_line_buffer_adjust(struct radeon_device *rdev,
     struct radeon_crtc *radeon_crtc,
     struct drm_display_mode *mode,
     struct drm_display_mode *other_mode)
{
 u32 tmp, buffer_alloc, i;
 u32 pipe_offset = radeon_crtc->crtc_id * 0x20;
 if (radeon_crtc->base.enabled && mode) {
  if (other_mode) {
   tmp = 0;
   buffer_alloc = 1;
  } else {
   tmp = 2;
   buffer_alloc = 2;
  }
 } else {
  tmp = 0;
  buffer_alloc = 0;
 }


 if (radeon_crtc->crtc_id % 2)
  tmp += 4;
 WREG32(DC_LB_MEMORY_SPLIT + radeon_crtc->crtc_offset, tmp);

 if (ASIC_IS_DCE41(rdev) || ASIC_IS_DCE5(rdev)) {
  WREG32(PIPE0_DMIF_BUFFER_CONTROL + pipe_offset,
         DMIF_BUFFERS_ALLOCATED(buffer_alloc));
  for (i = 0; i < rdev->usec_timeout; i++) {
   if (RREG32(PIPE0_DMIF_BUFFER_CONTROL + pipe_offset) &
       DMIF_BUFFERS_ALLOCATED_COMPLETED)
    break;
   udelay(1);
  }
 }

 if (radeon_crtc->base.enabled && mode) {
  switch (tmp) {
  case 0:
  case 4:
  default:
   if (ASIC_IS_DCE5(rdev))
    return 4096 * 2;
   else
    return 3840 * 2;
  case 1:
  case 5:
   if (ASIC_IS_DCE5(rdev))
    return 6144 * 2;
   else
    return 5760 * 2;
  case 2:
  case 6:
   if (ASIC_IS_DCE5(rdev))
    return 8192 * 2;
   else
    return 7680 * 2;
  case 3:
  case 7:
   if (ASIC_IS_DCE5(rdev))
    return 2048 * 2;
   else
    return 1920 * 2;
  }
 }


 return 0;
}
