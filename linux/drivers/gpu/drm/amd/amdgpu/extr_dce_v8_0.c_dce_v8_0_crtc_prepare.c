
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;


 int ATOM_DISABLE ;
 int ATOM_ENABLE ;
 int DRM_MODE_DPMS_OFF ;
 int amdgpu_atombios_crtc_lock (struct drm_crtc*,int ) ;
 int amdgpu_atombios_crtc_powergate (struct drm_crtc*,int ) ;
 int dce_v8_0_crtc_dpms (struct drm_crtc*,int ) ;

__attribute__((used)) static void dce_v8_0_crtc_prepare(struct drm_crtc *crtc)
{

 amdgpu_atombios_crtc_powergate(crtc, ATOM_DISABLE);
 amdgpu_atombios_crtc_lock(crtc, ATOM_ENABLE);
 dce_v8_0_crtc_dpms(crtc, DRM_MODE_DPMS_OFF);
}
