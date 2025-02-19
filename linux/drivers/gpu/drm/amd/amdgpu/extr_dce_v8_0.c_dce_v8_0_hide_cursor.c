
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_crtc {TYPE_1__* dev; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_crtc {scalar_t__ crtc_offset; } ;
struct TYPE_2__ {struct amdgpu_device* dev_private; } ;


 int CURSOR_24_8_PRE_MULT ;
 int CURSOR_URGENT_1_2 ;
 int CUR_CONTROL__CURSOR_MODE__SHIFT ;
 int CUR_CONTROL__CURSOR_URGENT_CONTROL__SHIFT ;
 int WREG32_IDX (scalar_t__,int) ;
 scalar_t__ mmCUR_CONTROL ;
 struct amdgpu_crtc* to_amdgpu_crtc (struct drm_crtc*) ;

__attribute__((used)) static void dce_v8_0_hide_cursor(struct drm_crtc *crtc)
{
 struct amdgpu_crtc *amdgpu_crtc = to_amdgpu_crtc(crtc);
 struct amdgpu_device *adev = crtc->dev->dev_private;

 WREG32_IDX(mmCUR_CONTROL + amdgpu_crtc->crtc_offset,
     (CURSOR_24_8_PRE_MULT << CUR_CONTROL__CURSOR_MODE__SHIFT) |
     (CURSOR_URGENT_1_2 << CUR_CONTROL__CURSOR_URGENT_CONTROL__SHIFT));
}
