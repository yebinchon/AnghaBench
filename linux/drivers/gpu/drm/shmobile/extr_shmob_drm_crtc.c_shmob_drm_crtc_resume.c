
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmob_drm_crtc {scalar_t__ dpms; } ;


 scalar_t__ DRM_MODE_DPMS_ON ;
 int shmob_drm_crtc_start (struct shmob_drm_crtc*) ;

void shmob_drm_crtc_resume(struct shmob_drm_crtc *scrtc)
{
 if (scrtc->dpms != DRM_MODE_DPMS_ON)
  return;

 shmob_drm_crtc_start(scrtc);
}
