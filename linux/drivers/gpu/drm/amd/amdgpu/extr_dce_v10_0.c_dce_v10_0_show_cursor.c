
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_crtc {TYPE_1__* dev; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_crtc {scalar_t__ crtc_offset; int cursor_addr; } ;
struct TYPE_2__ {struct amdgpu_device* dev_private; } ;


 int CURSOR_EN ;
 int CURSOR_MODE ;
 int CUR_CONTROL ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32_IDX (scalar_t__) ;
 int WREG32 (scalar_t__,int ) ;
 int WREG32_IDX (scalar_t__,int ) ;
 int lower_32_bits (int ) ;
 scalar_t__ mmCUR_CONTROL ;
 scalar_t__ mmCUR_SURFACE_ADDRESS ;
 scalar_t__ mmCUR_SURFACE_ADDRESS_HIGH ;
 struct amdgpu_crtc* to_amdgpu_crtc (struct drm_crtc*) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void dce_v10_0_show_cursor(struct drm_crtc *crtc)
{
 struct amdgpu_crtc *amdgpu_crtc = to_amdgpu_crtc(crtc);
 struct amdgpu_device *adev = crtc->dev->dev_private;
 u32 tmp;

 WREG32(mmCUR_SURFACE_ADDRESS_HIGH + amdgpu_crtc->crtc_offset,
        upper_32_bits(amdgpu_crtc->cursor_addr));
 WREG32(mmCUR_SURFACE_ADDRESS + amdgpu_crtc->crtc_offset,
        lower_32_bits(amdgpu_crtc->cursor_addr));

 tmp = RREG32_IDX(mmCUR_CONTROL + amdgpu_crtc->crtc_offset);
 tmp = REG_SET_FIELD(tmp, CUR_CONTROL, CURSOR_EN, 1);
 tmp = REG_SET_FIELD(tmp, CUR_CONTROL, CURSOR_MODE, 2);
 WREG32_IDX(mmCUR_CONTROL + amdgpu_crtc->crtc_offset, tmp);
}
