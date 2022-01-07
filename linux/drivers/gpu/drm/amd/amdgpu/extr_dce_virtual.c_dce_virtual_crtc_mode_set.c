
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_framebuffer {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct amdgpu_crtc {struct drm_display_mode hw_mode; } ;


 struct amdgpu_crtc* to_amdgpu_crtc (struct drm_crtc*) ;

__attribute__((used)) static int dce_virtual_crtc_mode_set(struct drm_crtc *crtc,
      struct drm_display_mode *mode,
      struct drm_display_mode *adjusted_mode,
      int x, int y, struct drm_framebuffer *old_fb)
{
 struct amdgpu_crtc *amdgpu_crtc = to_amdgpu_crtc(crtc);


 amdgpu_crtc->hw_mode = *adjusted_mode;

 return 0;
}
