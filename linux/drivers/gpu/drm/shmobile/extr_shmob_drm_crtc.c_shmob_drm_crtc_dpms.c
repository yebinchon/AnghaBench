
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmob_drm_crtc {int dpms; } ;
struct drm_crtc {int dummy; } ;


 int DRM_MODE_DPMS_ON ;
 int shmob_drm_crtc_start (struct shmob_drm_crtc*) ;
 int shmob_drm_crtc_stop (struct shmob_drm_crtc*) ;
 struct shmob_drm_crtc* to_shmob_crtc (struct drm_crtc*) ;

__attribute__((used)) static void shmob_drm_crtc_dpms(struct drm_crtc *crtc, int mode)
{
 struct shmob_drm_crtc *scrtc = to_shmob_crtc(crtc);

 if (scrtc->dpms == mode)
  return;

 if (mode == DRM_MODE_DPMS_ON)
  shmob_drm_crtc_start(scrtc);
 else
  shmob_drm_crtc_stop(scrtc);

 scrtc->dpms = mode;
}
