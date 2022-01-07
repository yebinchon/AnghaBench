
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_vblank_crtc {int max_vblank_count; int inmodeset; } ;
struct drm_device {int max_vblank_count; struct drm_vblank_crtc* vblank; } ;
struct drm_crtc {struct drm_device* dev; } ;


 int READ_ONCE (int ) ;
 int WARN_ON (int) ;
 unsigned int drm_crtc_index (struct drm_crtc*) ;

void drm_crtc_set_max_vblank_count(struct drm_crtc *crtc,
       u32 max_vblank_count)
{
 struct drm_device *dev = crtc->dev;
 unsigned int pipe = drm_crtc_index(crtc);
 struct drm_vblank_crtc *vblank = &dev->vblank[pipe];

 WARN_ON(dev->max_vblank_count);
 WARN_ON(!READ_ONCE(vblank->inmodeset));

 vblank->max_vblank_count = max_vblank_count;
}
