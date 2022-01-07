
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct drm_display_mode {int crtc_hdisplay; } ;
struct amdgpu_device {int flags; scalar_t__ usec_timeout; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;
struct amdgpu_crtc {scalar_t__ crtc_id; scalar_t__ crtc_offset; TYPE_1__ base; } ;


 int AMD_IS_APU ;
 int DMIF_BUFFERS_ALLOCATED ;
 int DMIF_BUFFERS_ALLOCATION_COMPLETED ;
 int DRM_DEBUG_KMS (char*) ;
 int LB_MEMORY_CONFIG ;
 int LB_MEMORY_CTRL ;
 int PIPE0_DMIF_BUFFER_CONTROL ;
 scalar_t__ REG_GET_FIELD (scalar_t__,int ,int ) ;
 scalar_t__ REG_SET_FIELD (scalar_t__,int ,int ,scalar_t__) ;
 scalar_t__ RREG32 (scalar_t__) ;
 int WREG32 (scalar_t__,scalar_t__) ;
 scalar_t__ mmLB_MEMORY_CTRL ;
 scalar_t__ mmPIPE0_DMIF_BUFFER_CONTROL ;
 int udelay (int) ;

__attribute__((used)) static u32 dce_v11_0_line_buffer_adjust(struct amdgpu_device *adev,
           struct amdgpu_crtc *amdgpu_crtc,
           struct drm_display_mode *mode)
{
 u32 tmp, buffer_alloc, i, mem_cfg;
 u32 pipe_offset = amdgpu_crtc->crtc_id;
 if (amdgpu_crtc->base.enabled && mode) {
  if (mode->crtc_hdisplay < 1920) {
   mem_cfg = 1;
   buffer_alloc = 2;
  } else if (mode->crtc_hdisplay < 2560) {
   mem_cfg = 2;
   buffer_alloc = 2;
  } else if (mode->crtc_hdisplay < 4096) {
   mem_cfg = 0;
   buffer_alloc = (adev->flags & AMD_IS_APU) ? 2 : 4;
  } else {
   DRM_DEBUG_KMS("Mode too big for LB!\n");
   mem_cfg = 0;
   buffer_alloc = (adev->flags & AMD_IS_APU) ? 2 : 4;
  }
 } else {
  mem_cfg = 1;
  buffer_alloc = 0;
 }

 tmp = RREG32(mmLB_MEMORY_CTRL + amdgpu_crtc->crtc_offset);
 tmp = REG_SET_FIELD(tmp, LB_MEMORY_CTRL, LB_MEMORY_CONFIG, mem_cfg);
 WREG32(mmLB_MEMORY_CTRL + amdgpu_crtc->crtc_offset, tmp);

 tmp = RREG32(mmPIPE0_DMIF_BUFFER_CONTROL + pipe_offset);
 tmp = REG_SET_FIELD(tmp, PIPE0_DMIF_BUFFER_CONTROL, DMIF_BUFFERS_ALLOCATED, buffer_alloc);
 WREG32(mmPIPE0_DMIF_BUFFER_CONTROL + pipe_offset, tmp);

 for (i = 0; i < adev->usec_timeout; i++) {
  tmp = RREG32(mmPIPE0_DMIF_BUFFER_CONTROL + pipe_offset);
  if (REG_GET_FIELD(tmp, PIPE0_DMIF_BUFFER_CONTROL, DMIF_BUFFERS_ALLOCATION_COMPLETED))
   break;
  udelay(1);
 }

 if (amdgpu_crtc->base.enabled && mode) {
  switch (mem_cfg) {
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
