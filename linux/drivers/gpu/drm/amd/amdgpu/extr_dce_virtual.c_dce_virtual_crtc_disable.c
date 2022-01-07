
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;
struct amdgpu_crtc {int * connector; int * encoder; int pll_id; } ;


 int ATOM_PPLL_INVALID ;
 int DRM_MODE_DPMS_OFF ;
 int dce_virtual_crtc_dpms (struct drm_crtc*,int ) ;
 struct amdgpu_crtc* to_amdgpu_crtc (struct drm_crtc*) ;

__attribute__((used)) static void dce_virtual_crtc_disable(struct drm_crtc *crtc)
{
 struct amdgpu_crtc *amdgpu_crtc = to_amdgpu_crtc(crtc);

 dce_virtual_crtc_dpms(crtc, DRM_MODE_DPMS_OFF);

 amdgpu_crtc->pll_id = ATOM_PPLL_INVALID;
 amdgpu_crtc->encoder = ((void*)0);
 amdgpu_crtc->connector = ((void*)0);
}
