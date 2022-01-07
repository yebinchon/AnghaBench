
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mtk_sys_cap {int hia_opt; } ;
struct mtk_cryp {scalar_t__ base; TYPE_1__** ring; } ;
struct TYPE_2__ {int res_dma; } ;


 int MTK_CNT_RST ;
 int MTK_DESC_FETCH_SIZE (int) ;
 int MTK_DESC_FETCH_THRESH (int) ;
 int MTK_DESC_OFF ;
 int MTK_DESC_OFFSET (int) ;
 int MTK_DESC_OVL_IRQ_EN ;
 int MTK_DESC_RING_SZ ;
 int MTK_DESC_SIZE (int ) ;
 int MTK_DESC_SZ ;
 int MTK_RDR_PROC_MODE ;
 int MTK_RDR_PROC_THRESH ;
 int MTK_RDR_STAT_CLR ;
 int MTK_RES_FIFO_SIZE (int ) ;
 scalar_t__ RDR_BASE_ADDR_HI (int) ;
 scalar_t__ RDR_BASE_ADDR_LO (int) ;
 scalar_t__ RDR_CFG (int) ;
 scalar_t__ RDR_DESC_SIZE (int) ;
 scalar_t__ RDR_DMA_CFG (int) ;
 scalar_t__ RDR_PREP_COUNT (int) ;
 scalar_t__ RDR_PREP_PNTR (int) ;
 scalar_t__ RDR_PROC_COUNT (int) ;
 scalar_t__ RDR_PROC_PNTR (int) ;
 scalar_t__ RDR_RING_SIZE (int) ;
 scalar_t__ RDR_STAT (int) ;
 scalar_t__ RDR_THRESH (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mtk_res_desc_ring_setup(struct mtk_cryp *cryp,
        int i, struct mtk_sys_cap *cap)
{
 u32 rndup = 2;
 u32 count = ((1 << MTK_RES_FIFO_SIZE(cap->hia_opt)) / rndup) - 1;


 writel(0, cryp->base + RDR_CFG(i));


 writel(MTK_CNT_RST, cryp->base + RDR_PREP_COUNT(i));
 writel(MTK_CNT_RST, cryp->base + RDR_PROC_COUNT(i));

 writel(0, cryp->base + RDR_PREP_PNTR(i));
 writel(0, cryp->base + RDR_PROC_PNTR(i));
 writel(0, cryp->base + RDR_DMA_CFG(i));


 writel(0, cryp->base + RDR_BASE_ADDR_HI(i));
 writel(cryp->ring[i]->res_dma, cryp->base + RDR_BASE_ADDR_LO(i));

 writel(MTK_DESC_RING_SZ, cryp->base + RDR_RING_SIZE(i));
 writel(MTK_RDR_STAT_CLR, cryp->base + RDR_STAT(i));






 writel(MTK_RDR_PROC_THRESH | MTK_RDR_PROC_MODE,
        cryp->base + RDR_THRESH(i));






 writel(MTK_DESC_SIZE(MTK_DESC_SZ) | MTK_DESC_OFFSET(MTK_DESC_OFF),
        cryp->base + RDR_DESC_SIZE(i));





 writel(MTK_DESC_FETCH_SIZE(count * MTK_DESC_OFF) |
        MTK_DESC_FETCH_THRESH(count * rndup) |
        MTK_DESC_OVL_IRQ_EN,
     cryp->base + RDR_CFG(i));
}
