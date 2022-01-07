
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct radeon_device {scalar_t__ usec_timeout; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;
struct radeon_crtc {int crtc_id; scalar_t__ crtc_offset; TYPE_1__ base; } ;
struct drm_display_mode {int dummy; } ;


 int DC_LB_MEMORY_CONFIG (scalar_t__) ;
 scalar_t__ DC_LB_MEMORY_SPLIT ;
 int DMIF_BUFFERS_ALLOCATED (scalar_t__) ;
 int DMIF_BUFFERS_ALLOCATED_COMPLETED ;
 scalar_t__ PIPE0_DMIF_BUFFER_CONTROL ;
 int RREG32 (scalar_t__) ;
 int WREG32 (scalar_t__,int ) ;
 int udelay (int) ;

__attribute__((used)) static u32 dce6_line_buffer_adjust(struct radeon_device *rdev,
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

 WREG32(DC_LB_MEMORY_SPLIT + radeon_crtc->crtc_offset,
        DC_LB_MEMORY_CONFIG(tmp));

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
  case 2:
   return 8192 * 2;
  }
 }


 return 0;
}
