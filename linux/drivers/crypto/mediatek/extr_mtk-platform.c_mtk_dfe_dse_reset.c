
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_cryp {scalar_t__ base; } ;


 scalar_t__ DFE_PRIO_0 ;
 scalar_t__ DFE_PRIO_1 ;
 scalar_t__ DFE_PRIO_2 ;
 scalar_t__ DFE_PRIO_3 ;
 scalar_t__ DFE_THR_CTRL ;
 scalar_t__ DSE_PRIO_0 ;
 scalar_t__ DSE_PRIO_1 ;
 scalar_t__ DSE_PRIO_2 ;
 scalar_t__ DSE_PRIO_3 ;
 scalar_t__ DSE_THR_CTRL ;
 int MTK_DFSE_THR_CTRL_RESET ;
 int mtk_dfe_dse_state_check (struct mtk_cryp*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int mtk_dfe_dse_reset(struct mtk_cryp *cryp)
{
 int err;


 writel(MTK_DFSE_THR_CTRL_RESET, cryp->base + DFE_THR_CTRL);
 writel(0, cryp->base + DFE_PRIO_0);
 writel(0, cryp->base + DFE_PRIO_1);
 writel(0, cryp->base + DFE_PRIO_2);
 writel(0, cryp->base + DFE_PRIO_3);

 writel(MTK_DFSE_THR_CTRL_RESET, cryp->base + DSE_THR_CTRL);
 writel(0, cryp->base + DSE_PRIO_0);
 writel(0, cryp->base + DSE_PRIO_1);
 writel(0, cryp->base + DSE_PRIO_2);
 writel(0, cryp->base + DSE_PRIO_3);

 err = mtk_dfe_dse_state_check(cryp);
 if (err)
  return err;

 return 0;
}
