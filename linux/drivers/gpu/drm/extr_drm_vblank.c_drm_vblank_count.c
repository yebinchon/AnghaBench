
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct drm_vblank_crtc {int count; } ;
struct drm_device {unsigned int num_crtcs; struct drm_vblank_crtc* vblank; } ;


 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static u64 drm_vblank_count(struct drm_device *dev, unsigned int pipe)
{
 struct drm_vblank_crtc *vblank = &dev->vblank[pipe];

 if (WARN_ON(pipe >= dev->num_crtcs))
  return 0;

 return vblank->count;
}
