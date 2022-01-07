
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmob_drm_crtc {int dummy; } ;


 int shmob_drm_crtc_stop (struct shmob_drm_crtc*) ;

void shmob_drm_crtc_suspend(struct shmob_drm_crtc *scrtc)
{
 shmob_drm_crtc_stop(scrtc);
}
