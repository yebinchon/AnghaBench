
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_ddp_comp {scalar_t__ regs; } ;


 scalar_t__ DISP_OD_EN ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mtk_od_start(struct mtk_ddp_comp *comp)
{
 writel(1, comp->regs + DISP_OD_EN);
}
