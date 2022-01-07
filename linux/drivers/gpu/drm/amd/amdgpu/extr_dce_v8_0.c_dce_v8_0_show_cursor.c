
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_crtc {TYPE_1__* dev; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_crtc {scalar_t__ crtc_offset; int cursor_addr; } ;
struct TYPE_2__ {struct amdgpu_device* dev_private; } ;


 int CURSOR_24_8_PRE_MULT ;
 int CURSOR_URGENT_1_2 ;
 int CUR_CONTROL__CURSOR_EN_MASK ;
 int CUR_CONTROL__CURSOR_MODE__SHIFT ;
 int CUR_CONTROL__CURSOR_URGENT_CONTROL__SHIFT ;
 int WREG32 (scalar_t__,int ) ;
 int WREG32_IDX (scalar_t__,int) ;
 int lower_32_bits (int ) ;
 scalar_t__ mmCUR_CONTROL ;
 scalar_t__ mmCUR_SURFACE_ADDRESS ;
 scalar_t__ mmCUR_SURFACE_ADDRESS_HIGH ;
 struct amdgpu_crtc* to_amdgpu_crtc (struct drm_crtc*) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void dce_v8_0_show_cursor(struct drm_crtc *crtc)
{
 struct amdgpu_crtc *amdgpu_crtc = to_amdgpu_crtc(crtc);
 struct amdgpu_device *adev = crtc->dev->dev_private;

 WREG32(mmCUR_SURFACE_ADDRESS_HIGH + amdgpu_crtc->crtc_offset,
        upper_32_bits(amdgpu_crtc->cursor_addr));
 WREG32(mmCUR_SURFACE_ADDRESS + amdgpu_crtc->crtc_offset,
        lower_32_bits(amdgpu_crtc->cursor_addr));

 WREG32_IDX(mmCUR_CONTROL + amdgpu_crtc->crtc_offset,
     CUR_CONTROL__CURSOR_EN_MASK |
     (CURSOR_24_8_PRE_MULT << CUR_CONTROL__CURSOR_MODE__SHIFT) |
     (CURSOR_URGENT_1_2 << CUR_CONTROL__CURSOR_URGENT_CONTROL__SHIFT));
}
