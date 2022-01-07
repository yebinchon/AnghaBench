
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dev; } ;


 int drm_crtc_index (struct drm_crtc*) ;
 int drm_vblank_get (int ,int ) ;

int drm_crtc_vblank_get(struct drm_crtc *crtc)
{
 return drm_vblank_get(crtc->dev, drm_crtc_index(crtc));
}
