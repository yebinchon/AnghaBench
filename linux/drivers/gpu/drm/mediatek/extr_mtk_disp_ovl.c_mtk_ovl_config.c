
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_ddp_comp {scalar_t__ regs; } ;


 scalar_t__ DISP_REG_OVL_ROI_BGCLR ;
 scalar_t__ DISP_REG_OVL_ROI_SIZE ;
 scalar_t__ DISP_REG_OVL_RST ;
 int writel (int,scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void mtk_ovl_config(struct mtk_ddp_comp *comp, unsigned int w,
      unsigned int h, unsigned int vrefresh,
      unsigned int bpc)
{
 if (w != 0 && h != 0)
  writel_relaxed(h << 16 | w, comp->regs + DISP_REG_OVL_ROI_SIZE);
 writel_relaxed(0x0, comp->regs + DISP_REG_OVL_ROI_BGCLR);

 writel(0x1, comp->regs + DISP_REG_OVL_RST);
 writel(0x0, comp->regs + DISP_REG_OVL_RST);
}
