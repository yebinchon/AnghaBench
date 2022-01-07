
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int num_crtc; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;


 int RREG32 (scalar_t__) ;
 scalar_t__* crtc_offsets ;
 scalar_t__ mmCRTC_STATUS_FRAME_COUNT ;

__attribute__((used)) static u32 dce_v10_0_vblank_get_counter(struct amdgpu_device *adev, int crtc)
{
 if (crtc >= adev->mode_info.num_crtc)
  return 0;
 else
  return RREG32(mmCRTC_STATUS_FRAME_COUNT + crtc_offsets[crtc]);
}
