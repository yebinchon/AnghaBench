
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_ddp_comp {scalar_t__ regs; } ;


 int DISP_GAMMA_CFG ;
 scalar_t__ DISP_GAMMA_SIZE ;
 int mtk_dither_set (struct mtk_ddp_comp*,unsigned int,int ) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void mtk_gamma_config(struct mtk_ddp_comp *comp, unsigned int w,
        unsigned int h, unsigned int vrefresh,
        unsigned int bpc)
{
 writel(h << 16 | w, comp->regs + DISP_GAMMA_SIZE);
 mtk_dither_set(comp, bpc, DISP_GAMMA_CFG);
}
