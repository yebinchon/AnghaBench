
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_disp_ovl {struct drm_crtc* crtc; } ;
struct mtk_ddp_comp {scalar_t__ regs; } ;
struct drm_crtc {int dummy; } ;


 scalar_t__ DISP_REG_OVL_INTEN ;
 scalar_t__ DISP_REG_OVL_INTSTA ;
 int OVL_FME_CPL_INT ;
 struct mtk_disp_ovl* comp_to_ovl (struct mtk_ddp_comp*) ;
 int writel (int,scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void mtk_ovl_enable_vblank(struct mtk_ddp_comp *comp,
      struct drm_crtc *crtc)
{
 struct mtk_disp_ovl *ovl = comp_to_ovl(comp);

 ovl->crtc = crtc;
 writel(0x0, comp->regs + DISP_REG_OVL_INTSTA);
 writel_relaxed(OVL_FME_CPL_INT, comp->regs + DISP_REG_OVL_INTEN);
}
