
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct drm_display_mode {int dummy; } ;
struct amdgpu_device {scalar_t__ usec_timeout; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;
struct amdgpu_crtc {int crtc_id; scalar_t__ crtc_offset; TYPE_1__ base; } ;


 scalar_t__ DC_LB_MEMORY_CONFIG (scalar_t__) ;
 scalar_t__ PIPE0_DMIF_BUFFER_CONTROL__DMIF_BUFFERS_ALLOCATED__SHIFT ;
 int PIPE0_DMIF_BUFFER_CONTROL__DMIF_BUFFERS_ALLOCATION_COMPLETED_MASK ;
 int RREG32 (scalar_t__) ;
 int WREG32 (scalar_t__,scalar_t__) ;
 scalar_t__ mmDC_LB_MEMORY_SPLIT ;
 scalar_t__ mmPIPE0_DMIF_BUFFER_CONTROL ;
 int udelay (int) ;

__attribute__((used)) static u32 dce_v6_0_line_buffer_adjust(struct amdgpu_device *adev,
       struct amdgpu_crtc *amdgpu_crtc,
       struct drm_display_mode *mode,
       struct drm_display_mode *other_mode)
{
 u32 tmp, buffer_alloc, i;
 u32 pipe_offset = amdgpu_crtc->crtc_id * 0x8;
 if (amdgpu_crtc->base.enabled && mode) {
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

 WREG32(mmDC_LB_MEMORY_SPLIT + amdgpu_crtc->crtc_offset,
        DC_LB_MEMORY_CONFIG(tmp));

 WREG32(mmPIPE0_DMIF_BUFFER_CONTROL + pipe_offset,
        (buffer_alloc << PIPE0_DMIF_BUFFER_CONTROL__DMIF_BUFFERS_ALLOCATED__SHIFT));
 for (i = 0; i < adev->usec_timeout; i++) {
  if (RREG32(mmPIPE0_DMIF_BUFFER_CONTROL + pipe_offset) &
      PIPE0_DMIF_BUFFER_CONTROL__DMIF_BUFFERS_ALLOCATION_COMPLETED_MASK)
   break;
  udelay(1);
 }

 if (amdgpu_crtc->base.enabled && mode) {
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
