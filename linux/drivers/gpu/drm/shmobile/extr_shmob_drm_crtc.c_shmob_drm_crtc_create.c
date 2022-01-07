
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_crtc {int dummy; } ;
struct TYPE_2__ {int dpms; struct drm_crtc crtc; } ;
struct shmob_drm_device {int ddev; TYPE_1__ crtc; } ;


 int DRM_MODE_DPMS_OFF ;
 int crtc_funcs ;
 int crtc_helper_funcs ;
 int drm_crtc_helper_add (struct drm_crtc*,int *) ;
 int drm_crtc_init (int ,struct drm_crtc*,int *) ;

int shmob_drm_crtc_create(struct shmob_drm_device *sdev)
{
 struct drm_crtc *crtc = &sdev->crtc.crtc;
 int ret;

 sdev->crtc.dpms = DRM_MODE_DPMS_OFF;

 ret = drm_crtc_init(sdev->ddev, crtc, &crtc_funcs);
 if (ret < 0)
  return ret;

 drm_crtc_helper_add(crtc, &crtc_helper_funcs);

 return 0;
}
