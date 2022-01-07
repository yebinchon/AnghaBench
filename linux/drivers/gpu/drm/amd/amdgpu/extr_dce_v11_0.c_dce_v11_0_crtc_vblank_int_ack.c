
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int num_crtc; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;


 int DRM_DEBUG (char*,int) ;
 int LB_VBLANK_STATUS ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32 (scalar_t__) ;
 int VBLANK_ACK ;
 int WREG32 (scalar_t__,int ) ;
 scalar_t__* crtc_offsets ;
 scalar_t__ mmLB_VBLANK_STATUS ;

__attribute__((used)) static void dce_v11_0_crtc_vblank_int_ack(struct amdgpu_device *adev,
       int crtc)
{
 u32 tmp;

 if (crtc < 0 || crtc >= adev->mode_info.num_crtc) {
  DRM_DEBUG("invalid crtc %d\n", crtc);
  return;
 }

 tmp = RREG32(mmLB_VBLANK_STATUS + crtc_offsets[crtc]);
 tmp = REG_SET_FIELD(tmp, LB_VBLANK_STATUS, VBLANK_ACK, 1);
 WREG32(mmLB_VBLANK_STATUS + crtc_offsets[crtc], tmp);
}
