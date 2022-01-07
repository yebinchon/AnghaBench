
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv04_display {scalar_t__* image; } ;
struct nouveau_crtc {size_t index; } ;
struct drm_crtc {int dev; } ;


 int nouveau_bo_ref (int *,scalar_t__*) ;
 int nouveau_bo_unpin (scalar_t__) ;
 struct nouveau_crtc* nouveau_crtc (struct drm_crtc*) ;
 struct nv04_display* nv04_display (int ) ;

__attribute__((used)) static void
nv_crtc_disable(struct drm_crtc *crtc)
{
 struct nv04_display *disp = nv04_display(crtc->dev);
 struct nouveau_crtc *nv_crtc = nouveau_crtc(crtc);
 if (disp->image[nv_crtc->index])
  nouveau_bo_unpin(disp->image[nv_crtc->index]);
 nouveau_bo_ref(((void*)0), &disp->image[nv_crtc->index]);
}
