
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_drm_crtc {int pending_needs_vblank; int base; } ;


 int drm_crtc_handle_vblank (int *) ;
 int mtk_drm_crtc_finish_page_flip (struct mtk_drm_crtc*) ;

__attribute__((used)) static void mtk_drm_finish_page_flip(struct mtk_drm_crtc *mtk_crtc)
{
 drm_crtc_handle_vblank(&mtk_crtc->base);
 if (mtk_crtc->pending_needs_vblank) {
  mtk_drm_crtc_finish_page_flip(mtk_crtc);
  mtk_crtc->pending_needs_vblank = 0;
 }
}
