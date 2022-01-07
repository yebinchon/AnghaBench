
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_ddp_comp {scalar_t__ regs; } ;


 int AAL_EN ;
 scalar_t__ DISP_AAL_EN ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mtk_aal_start(struct mtk_ddp_comp *comp)
{
 writel(AAL_EN, comp->regs + DISP_AAL_EN);
}
