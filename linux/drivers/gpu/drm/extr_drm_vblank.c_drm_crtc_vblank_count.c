
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct drm_crtc {int dev; } ;


 int drm_crtc_index (struct drm_crtc*) ;
 int drm_vblank_count (int ,int ) ;

u64 drm_crtc_vblank_count(struct drm_crtc *crtc)
{
 return drm_vblank_count(crtc->dev, drm_crtc_index(crtc));
}
