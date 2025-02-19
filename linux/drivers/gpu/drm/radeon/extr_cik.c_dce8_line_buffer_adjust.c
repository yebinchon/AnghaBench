
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct radeon_device {int flags; scalar_t__ usec_timeout; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;
struct radeon_crtc {int crtc_id; scalar_t__ crtc_offset; TYPE_1__ base; } ;
struct drm_display_mode {int crtc_hdisplay; } ;


 int DMIF_BUFFERS_ALLOCATED (scalar_t__) ;
 int DMIF_BUFFERS_ALLOCATED_COMPLETED ;
 int DRM_DEBUG_KMS (char*) ;
 int LB_MEMORY_CONFIG (scalar_t__) ;
 scalar_t__ LB_MEMORY_CTRL ;
 int LB_MEMORY_SIZE (int) ;
 scalar_t__ PIPE0_DMIF_BUFFER_CONTROL ;
 int RADEON_IS_IGP ;
 int RREG32 (scalar_t__) ;
 int WREG32 (scalar_t__,int) ;
 int udelay (int) ;

__attribute__((used)) static u32 dce8_line_buffer_adjust(struct radeon_device *rdev,
       struct radeon_crtc *radeon_crtc,
       struct drm_display_mode *mode)
{
 u32 tmp, buffer_alloc, i;
 u32 pipe_offset = radeon_crtc->crtc_id * 0x20;
 if (radeon_crtc->base.enabled && mode) {
  if (mode->crtc_hdisplay < 1920) {
   tmp = 1;
   buffer_alloc = 2;
  } else if (mode->crtc_hdisplay < 2560) {
   tmp = 2;
   buffer_alloc = 2;
  } else if (mode->crtc_hdisplay < 4096) {
   tmp = 0;
   buffer_alloc = (rdev->flags & RADEON_IS_IGP) ? 2 : 4;
  } else {
   DRM_DEBUG_KMS("Mode too big for LB!\n");
   tmp = 0;
   buffer_alloc = (rdev->flags & RADEON_IS_IGP) ? 2 : 4;
  }
 } else {
  tmp = 1;
  buffer_alloc = 0;
 }

 WREG32(LB_MEMORY_CTRL + radeon_crtc->crtc_offset,
        LB_MEMORY_CONFIG(tmp) | LB_MEMORY_SIZE(0x6B0));

 WREG32(PIPE0_DMIF_BUFFER_CONTROL + pipe_offset,
        DMIF_BUFFERS_ALLOCATED(buffer_alloc));
 for (i = 0; i < rdev->usec_timeout; i++) {
  if (RREG32(PIPE0_DMIF_BUFFER_CONTROL + pipe_offset) &
      DMIF_BUFFERS_ALLOCATED_COMPLETED)
   break;
  udelay(1);
 }

 if (radeon_crtc->base.enabled && mode) {
  switch (tmp) {
  case 0:
  default:
   return 4096 * 2;
  case 1:
   return 1920 * 2;
  case 2:
   return 2560 * 2;
  }
 }


 return 0;
}
