
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int flags; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_crtc {scalar_t__ crtc_offset; } ;


 int DRM_MODE_FLAG_INTERLACE ;
 int INTERLEAVE_EN ;
 int WREG32 (scalar_t__,int ) ;
 scalar_t__ mmDATA_FORMAT ;
 struct amdgpu_crtc* to_amdgpu_crtc (struct drm_crtc*) ;

__attribute__((used)) static void dce_v6_0_set_interleave(struct drm_crtc *crtc,
        struct drm_display_mode *mode)
{
 struct drm_device *dev = crtc->dev;
 struct amdgpu_device *adev = dev->dev_private;
 struct amdgpu_crtc *amdgpu_crtc = to_amdgpu_crtc(crtc);

 if (mode->flags & DRM_MODE_FLAG_INTERLACE)
  WREG32(mmDATA_FORMAT + amdgpu_crtc->crtc_offset,
         INTERLEAVE_EN);
 else
  WREG32(mmDATA_FORMAT + amdgpu_crtc->crtc_offset, 0);
}
