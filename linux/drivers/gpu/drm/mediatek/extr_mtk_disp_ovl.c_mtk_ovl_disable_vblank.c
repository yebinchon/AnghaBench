
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_disp_ovl {int * crtc; } ;
struct mtk_ddp_comp {scalar_t__ regs; } ;


 scalar_t__ DISP_REG_OVL_INTEN ;
 struct mtk_disp_ovl* comp_to_ovl (struct mtk_ddp_comp*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void mtk_ovl_disable_vblank(struct mtk_ddp_comp *comp)
{
 struct mtk_disp_ovl *ovl = comp_to_ovl(comp);

 ovl->crtc = ((void*)0);
 writel_relaxed(0x0, comp->regs + DISP_REG_OVL_INTEN);
}
