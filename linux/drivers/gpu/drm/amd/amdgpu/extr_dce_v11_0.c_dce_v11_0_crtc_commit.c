
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;


 int ATOM_DISABLE ;
 int DRM_MODE_DPMS_ON ;
 int amdgpu_atombios_crtc_lock (struct drm_crtc*,int ) ;
 int dce_v11_0_crtc_dpms (struct drm_crtc*,int ) ;

__attribute__((used)) static void dce_v11_0_crtc_commit(struct drm_crtc *crtc)
{
 dce_v11_0_crtc_dpms(crtc, DRM_MODE_DPMS_ON);
 amdgpu_atombios_crtc_lock(crtc, ATOM_DISABLE);
}
