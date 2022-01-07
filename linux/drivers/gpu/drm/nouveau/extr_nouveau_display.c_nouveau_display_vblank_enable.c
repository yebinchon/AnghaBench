
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_crtc {int vblank; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int EINVAL ;
 struct drm_crtc* drm_crtc_from_index (struct drm_device*,unsigned int) ;
 struct nouveau_crtc* nouveau_crtc (struct drm_crtc*) ;
 int nvif_notify_get (int *) ;

int
nouveau_display_vblank_enable(struct drm_device *dev, unsigned int pipe)
{
 struct drm_crtc *crtc;
 struct nouveau_crtc *nv_crtc;

 crtc = drm_crtc_from_index(dev, pipe);
 if (!crtc)
  return -EINVAL;

 nv_crtc = nouveau_crtc(crtc);
 nvif_notify_get(&nv_crtc->vblank);

 return 0;
}
