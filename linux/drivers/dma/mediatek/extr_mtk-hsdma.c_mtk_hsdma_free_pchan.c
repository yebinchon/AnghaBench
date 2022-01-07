
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hsdma_ring {int tphys; int txd; int cb; } ;
struct mtk_hsdma_pchan {int sz_ring; struct mtk_hsdma_ring ring; } ;
struct mtk_hsdma_device {int dummy; } ;


 scalar_t__ MTK_DMA_SIZE ;
 int MTK_HSDMA_GLO ;
 int MTK_HSDMA_GLO_DMA ;
 int MTK_HSDMA_INT_ENABLE ;
 int MTK_HSDMA_INT_RXDONE ;
 int MTK_HSDMA_RX_BASE ;
 int MTK_HSDMA_RX_CNT ;
 int MTK_HSDMA_RX_CPU ;
 int MTK_HSDMA_TX_BASE ;
 int MTK_HSDMA_TX_CNT ;
 int MTK_HSDMA_TX_CPU ;
 int dma_free_coherent (int ,int ,int ,int ) ;
 int hsdma2dev (struct mtk_hsdma_device*) ;
 int kfree (int ) ;
 int mtk_dma_clr (struct mtk_hsdma_device*,int ,int ) ;
 int mtk_dma_write (struct mtk_hsdma_device*,int ,scalar_t__) ;
 int mtk_hsdma_busy_wait (struct mtk_hsdma_device*) ;

__attribute__((used)) static void mtk_hsdma_free_pchan(struct mtk_hsdma_device *hsdma,
     struct mtk_hsdma_pchan *pc)
{
 struct mtk_hsdma_ring *ring = &pc->ring;


 mtk_dma_clr(hsdma, MTK_HSDMA_GLO, MTK_HSDMA_GLO_DMA);
 mtk_hsdma_busy_wait(hsdma);


 mtk_dma_clr(hsdma, MTK_HSDMA_INT_ENABLE, MTK_HSDMA_INT_RXDONE);
 mtk_dma_write(hsdma, MTK_HSDMA_TX_BASE, 0);
 mtk_dma_write(hsdma, MTK_HSDMA_TX_CNT, 0);
 mtk_dma_write(hsdma, MTK_HSDMA_TX_CPU, 0);
 mtk_dma_write(hsdma, MTK_HSDMA_RX_BASE, 0);
 mtk_dma_write(hsdma, MTK_HSDMA_RX_CNT, 0);
 mtk_dma_write(hsdma, MTK_HSDMA_RX_CPU, MTK_DMA_SIZE - 1);

 kfree(ring->cb);

 dma_free_coherent(hsdma2dev(hsdma),
     pc->sz_ring, ring->txd, ring->tphys);
}
