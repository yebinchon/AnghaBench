
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int CRTC_CONTROL__CRTC_MASTER_EN_MASK ;
 int RREG32 (scalar_t__) ;
 int WREG32 (scalar_t__,int) ;
 scalar_t__ amdgpu_atombios_has_dce_engine_info (struct amdgpu_device*) ;
 scalar_t__* crtc_offsets ;
 int dce_v6_0_get_num_crtc (struct amdgpu_device*) ;
 int dce_v6_0_set_vga_render_state (struct amdgpu_device*,int) ;
 scalar_t__ mmCRTC_CONTROL ;
 scalar_t__ mmCRTC_UPDATE_LOCK ;

void dce_v6_0_disable_dce(struct amdgpu_device *adev)
{

 if (amdgpu_atombios_has_dce_engine_info(adev)) {
  u32 tmp;
  int crtc_enabled, i;

  dce_v6_0_set_vga_render_state(adev, 0);


  for (i = 0; i < dce_v6_0_get_num_crtc(adev); i++) {
   crtc_enabled = RREG32(mmCRTC_CONTROL + crtc_offsets[i]) &
    CRTC_CONTROL__CRTC_MASTER_EN_MASK;
   if (crtc_enabled) {
    WREG32(mmCRTC_UPDATE_LOCK + crtc_offsets[i], 1);
    tmp = RREG32(mmCRTC_CONTROL + crtc_offsets[i]);
    tmp &= ~CRTC_CONTROL__CRTC_MASTER_EN_MASK;
    WREG32(mmCRTC_CONTROL + crtc_offsets[i], tmp);
    WREG32(mmCRTC_UPDATE_LOCK + crtc_offsets[i], 0);
   }
  }
 }
}
