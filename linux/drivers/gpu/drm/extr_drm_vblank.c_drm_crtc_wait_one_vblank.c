
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dev; } ;


 int drm_crtc_index (struct drm_crtc*) ;
 int drm_wait_one_vblank (int ,int ) ;

void drm_crtc_wait_one_vblank(struct drm_crtc *crtc)
{
 drm_wait_one_vblank(crtc->dev, drm_crtc_index(crtc));
}
