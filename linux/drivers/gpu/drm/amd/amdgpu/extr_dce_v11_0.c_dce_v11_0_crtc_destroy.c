
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;
struct amdgpu_crtc {int dummy; } ;


 int drm_crtc_cleanup (struct drm_crtc*) ;
 int kfree (struct amdgpu_crtc*) ;
 struct amdgpu_crtc* to_amdgpu_crtc (struct drm_crtc*) ;

__attribute__((used)) static void dce_v11_0_crtc_destroy(struct drm_crtc *crtc)
{
 struct amdgpu_crtc *amdgpu_crtc = to_amdgpu_crtc(crtc);

 drm_crtc_cleanup(crtc);
 kfree(amdgpu_crtc);
}
