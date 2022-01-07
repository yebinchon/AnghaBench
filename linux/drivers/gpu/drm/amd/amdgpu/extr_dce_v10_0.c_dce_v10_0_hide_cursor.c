
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_crtc {TYPE_1__* dev; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_crtc {scalar_t__ crtc_offset; } ;
struct TYPE_2__ {struct amdgpu_device* dev_private; } ;


 int CURSOR_EN ;
 int CUR_CONTROL ;
 int REG_SET_FIELD (int ,int ,int ,int ) ;
 int RREG32_IDX (scalar_t__) ;
 int WREG32_IDX (scalar_t__,int ) ;
 scalar_t__ mmCUR_CONTROL ;
 struct amdgpu_crtc* to_amdgpu_crtc (struct drm_crtc*) ;

__attribute__((used)) static void dce_v10_0_hide_cursor(struct drm_crtc *crtc)
{
 struct amdgpu_crtc *amdgpu_crtc = to_amdgpu_crtc(crtc);
 struct amdgpu_device *adev = crtc->dev->dev_private;
 u32 tmp;

 tmp = RREG32_IDX(mmCUR_CONTROL + amdgpu_crtc->crtc_offset);
 tmp = REG_SET_FIELD(tmp, CUR_CONTROL, CURSOR_EN, 0);
 WREG32_IDX(mmCUR_CONTROL + amdgpu_crtc->crtc_offset, tmp);
}
