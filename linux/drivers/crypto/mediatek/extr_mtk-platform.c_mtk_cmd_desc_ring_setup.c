
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mtk_sys_cap {int hia_opt; } ;
struct mtk_cryp {scalar_t__ base; TYPE_1__** ring; } ;
struct TYPE_2__ {int cmd_dma; } ;


 scalar_t__ CDR_BASE_ADDR_HI (int) ;
 scalar_t__ CDR_BASE_ADDR_LO (int) ;
 scalar_t__ CDR_CFG (int) ;
 scalar_t__ CDR_DESC_SIZE (int) ;
 scalar_t__ CDR_DMA_CFG (int) ;
 scalar_t__ CDR_PREP_COUNT (int) ;
 scalar_t__ CDR_PREP_PNTR (int) ;
 scalar_t__ CDR_PROC_COUNT (int) ;
 scalar_t__ CDR_PROC_PNTR (int) ;
 scalar_t__ CDR_RING_SIZE (int) ;
 scalar_t__ CDR_STAT (int) ;
 int MTK_CDR_STAT_CLR ;
 int MTK_CMD_FIFO_SIZE (int ) ;
 int MTK_CNT_RST ;
 int MTK_DESC_ATP_PRESENT ;
 int MTK_DESC_FETCH_SIZE (int) ;
 int MTK_DESC_FETCH_THRESH (int) ;
 int MTK_DESC_OFF ;
 int MTK_DESC_OFFSET (int) ;
 int MTK_DESC_RING_SZ ;
 int MTK_DESC_SIZE (int) ;
 int MTK_DESC_SZ ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mtk_cmd_desc_ring_setup(struct mtk_cryp *cryp,
        int i, struct mtk_sys_cap *cap)
{

 u32 count =
  ((1 << MTK_CMD_FIFO_SIZE(cap->hia_opt)) / MTK_DESC_SZ) - 1;


 writel(0, cryp->base + CDR_CFG(i));


 writel(MTK_CNT_RST, cryp->base + CDR_PREP_COUNT(i));
 writel(MTK_CNT_RST, cryp->base + CDR_PROC_COUNT(i));

 writel(0, cryp->base + CDR_PREP_PNTR(i));
 writel(0, cryp->base + CDR_PROC_PNTR(i));
 writel(0, cryp->base + CDR_DMA_CFG(i));


 writel(0, cryp->base + CDR_BASE_ADDR_HI(i));
 writel(cryp->ring[i]->cmd_dma, cryp->base + CDR_BASE_ADDR_LO(i));

 writel(MTK_DESC_RING_SZ, cryp->base + CDR_RING_SIZE(i));


 writel(MTK_CDR_STAT_CLR, cryp->base + CDR_STAT(i));





 writel(MTK_DESC_SIZE(MTK_DESC_SZ) |
     MTK_DESC_OFFSET(MTK_DESC_OFF) |
        MTK_DESC_ATP_PRESENT,
        cryp->base + CDR_DESC_SIZE(i));

 writel(MTK_DESC_FETCH_SIZE(count * MTK_DESC_OFF) |
     MTK_DESC_FETCH_THRESH(count * MTK_DESC_SZ),
     cryp->base + CDR_CFG(i));
}
