
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv04_display {scalar_t__* image; } ;
struct TYPE_2__ {scalar_t__ nvbo; } ;
struct nouveau_crtc {size_t index; TYPE_1__ cursor; } ;
struct drm_crtc {int dev; } ;


 int drm_crtc_cleanup (struct drm_crtc*) ;
 int kfree (struct nouveau_crtc*) ;
 int nouveau_bo_ref (int *,scalar_t__*) ;
 int nouveau_bo_unmap (scalar_t__) ;
 int nouveau_bo_unpin (scalar_t__) ;
 struct nouveau_crtc* nouveau_crtc (struct drm_crtc*) ;
 struct nv04_display* nv04_display (int ) ;

__attribute__((used)) static void nv_crtc_destroy(struct drm_crtc *crtc)
{
 struct nv04_display *disp = nv04_display(crtc->dev);
 struct nouveau_crtc *nv_crtc = nouveau_crtc(crtc);

 if (!nv_crtc)
  return;

 drm_crtc_cleanup(crtc);

 if (disp->image[nv_crtc->index])
  nouveau_bo_unpin(disp->image[nv_crtc->index]);
 nouveau_bo_ref(((void*)0), &disp->image[nv_crtc->index]);

 nouveau_bo_unmap(nv_crtc->cursor.nvbo);
 nouveau_bo_unpin(nv_crtc->cursor.nvbo);
 nouveau_bo_ref(((void*)0), &nv_crtc->cursor.nvbo);
 kfree(nv_crtc);
}
