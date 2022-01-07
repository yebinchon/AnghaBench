
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_ddp_comp {scalar_t__ regs; } ;


 scalar_t__ DISP_OD_CFG ;
 scalar_t__ DISP_OD_SIZE ;
 unsigned int OD_RELAYMODE ;
 int mtk_dither_set (struct mtk_ddp_comp*,unsigned int,scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void mtk_od_config(struct mtk_ddp_comp *comp, unsigned int w,
     unsigned int h, unsigned int vrefresh,
     unsigned int bpc)
{
 writel(w << 16 | h, comp->regs + DISP_OD_SIZE);
 writel(OD_RELAYMODE, comp->regs + DISP_OD_CFG);
 mtk_dither_set(comp, bpc, DISP_OD_CFG);
}
