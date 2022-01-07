
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_drm_crtc {int base; struct mtk_ddp_comp** ddp_comp; } ;
struct mtk_ddp_comp {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int mtk_ddp_comp_enable_vblank (struct mtk_ddp_comp*,int *) ;
 struct mtk_drm_crtc* to_mtk_crtc (struct drm_crtc*) ;

__attribute__((used)) static int mtk_drm_crtc_enable_vblank(struct drm_crtc *crtc)
{
 struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
 struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[0];

 mtk_ddp_comp_enable_vblank(comp, &mtk_crtc->base);

 return 0;
}
