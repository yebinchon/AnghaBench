
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;


 int DRM_MODE_DPMS_OFF ;
 int dce_virtual_crtc_dpms (struct drm_crtc*,int ) ;

__attribute__((used)) static void dce_virtual_crtc_prepare(struct drm_crtc *crtc)
{
 dce_virtual_crtc_dpms(crtc, DRM_MODE_DPMS_OFF);
}
