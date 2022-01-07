
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_vblank_crtc {scalar_t__ max_vblank_count; } ;
struct drm_device {int max_vblank_count; struct drm_vblank_crtc* vblank; } ;



__attribute__((used)) static u32 drm_max_vblank_count(struct drm_device *dev, unsigned int pipe)
{
 struct drm_vblank_crtc *vblank = &dev->vblank[pipe];

 return vblank->max_vblank_count ?: dev->max_vblank_count;
}
