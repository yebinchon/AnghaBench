
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_cryp {scalar_t__ base; } ;


 scalar_t__ DFE_THR_CTRL ;
 scalar_t__ DSE_THR_CTRL ;
 int MTK_DFSE_THR_CTRL_EN ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mtk_desc_ring_link(struct mtk_cryp *cryp, u32 mask)
{

 writel(MTK_DFSE_THR_CTRL_EN | mask, cryp->base + DFE_THR_CTRL);
 writel(MTK_DFSE_THR_CTRL_EN | mask, cryp->base + DSE_THR_CTRL);
}
