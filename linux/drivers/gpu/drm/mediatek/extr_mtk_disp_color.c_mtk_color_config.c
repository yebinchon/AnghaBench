
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_disp_color {int dummy; } ;
struct mtk_ddp_comp {scalar_t__ regs; } ;


 scalar_t__ DISP_COLOR_HEIGHT (struct mtk_disp_color*) ;
 scalar_t__ DISP_COLOR_WIDTH (struct mtk_disp_color*) ;
 struct mtk_disp_color* comp_to_color (struct mtk_ddp_comp*) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void mtk_color_config(struct mtk_ddp_comp *comp, unsigned int w,
        unsigned int h, unsigned int vrefresh,
        unsigned int bpc)
{
 struct mtk_disp_color *color = comp_to_color(comp);

 writel(w, comp->regs + DISP_COLOR_WIDTH(color));
 writel(h, comp->regs + DISP_COLOR_HEIGHT(color));
}
