
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int num_crtc; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;


 int EINVAL ;
 int RREG32 (scalar_t__) ;
 scalar_t__* crtc_offsets ;
 scalar_t__ mmCRTC_STATUS_POSITION ;
 scalar_t__ mmCRTC_V_BLANK_START_END ;

__attribute__((used)) static int dce_v8_0_crtc_get_scanoutpos(struct amdgpu_device *adev, int crtc,
     u32 *vbl, u32 *position)
{
 if ((crtc < 0) || (crtc >= adev->mode_info.num_crtc))
  return -EINVAL;

 *vbl = RREG32(mmCRTC_V_BLANK_START_END + crtc_offsets[crtc]);
 *position = RREG32(mmCRTC_STATUS_POSITION + crtc_offsets[crtc]);

 return 0;
}
