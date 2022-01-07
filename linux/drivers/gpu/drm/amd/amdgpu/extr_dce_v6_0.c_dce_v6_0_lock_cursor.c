
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_crtc {TYPE_1__* dev; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_crtc {scalar_t__ crtc_offset; } ;
struct TYPE_2__ {struct amdgpu_device* dev_private; } ;


 int CUR_UPDATE__CURSOR_UPDATE_LOCK_MASK ;
 int RREG32 (scalar_t__) ;
 int WREG32 (scalar_t__,int ) ;
 scalar_t__ mmCUR_UPDATE ;
 struct amdgpu_crtc* to_amdgpu_crtc (struct drm_crtc*) ;

__attribute__((used)) static void dce_v6_0_lock_cursor(struct drm_crtc *crtc, bool lock)
{
 struct amdgpu_device *adev = crtc->dev->dev_private;
 struct amdgpu_crtc *amdgpu_crtc = to_amdgpu_crtc(crtc);
 uint32_t cur_lock;

 cur_lock = RREG32(mmCUR_UPDATE + amdgpu_crtc->crtc_offset);
 if (lock)
  cur_lock |= CUR_UPDATE__CURSOR_UPDATE_LOCK_MASK;
 else
  cur_lock &= ~CUR_UPDATE__CURSOR_UPDATE_LOCK_MASK;
 WREG32(mmCUR_UPDATE + amdgpu_crtc->crtc_offset, cur_lock);
}
