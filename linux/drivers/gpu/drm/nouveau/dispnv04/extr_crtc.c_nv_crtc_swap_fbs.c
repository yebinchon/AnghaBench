
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv04_display {scalar_t__* image; } ;
struct nouveau_framebuffer {int nvbo; } ;
struct nouveau_crtc {size_t index; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_crtc {TYPE_1__* primary; int dev; } ;
struct TYPE_2__ {int fb; } ;


 int TTM_PL_FLAG_VRAM ;
 int nouveau_bo_pin (int ,int ,int) ;
 int nouveau_bo_ref (int ,scalar_t__*) ;
 int nouveau_bo_unpin (scalar_t__) ;
 struct nouveau_crtc* nouveau_crtc (struct drm_crtc*) ;
 struct nouveau_framebuffer* nouveau_framebuffer (int ) ;
 struct nv04_display* nv04_display (int ) ;

__attribute__((used)) static int
nv_crtc_swap_fbs(struct drm_crtc *crtc, struct drm_framebuffer *old_fb)
{
 struct nv04_display *disp = nv04_display(crtc->dev);
 struct nouveau_framebuffer *nvfb = nouveau_framebuffer(crtc->primary->fb);
 struct nouveau_crtc *nv_crtc = nouveau_crtc(crtc);
 int ret;

 ret = nouveau_bo_pin(nvfb->nvbo, TTM_PL_FLAG_VRAM, 0);
 if (ret == 0) {
  if (disp->image[nv_crtc->index])
   nouveau_bo_unpin(disp->image[nv_crtc->index]);
  nouveau_bo_ref(nvfb->nvbo, &disp->image[nv_crtc->index]);
 }

 return ret;
}
