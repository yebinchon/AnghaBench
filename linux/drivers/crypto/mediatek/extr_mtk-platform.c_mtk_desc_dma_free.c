
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_cryp {TYPE_1__** ring; int dev; } ;
struct TYPE_2__ {int cmd_dma; int cmd_base; int res_dma; int res_base; } ;


 int MTK_DESC_RING_SZ ;
 int MTK_RING_MAX ;
 int dma_free_coherent (int ,int ,int ,int ) ;
 int kfree (TYPE_1__*) ;

__attribute__((used)) static void mtk_desc_dma_free(struct mtk_cryp *cryp)
{
 int i;

 for (i = 0; i < MTK_RING_MAX; i++) {
  dma_free_coherent(cryp->dev, MTK_DESC_RING_SZ,
      cryp->ring[i]->res_base,
      cryp->ring[i]->res_dma);
  dma_free_coherent(cryp->dev, MTK_DESC_RING_SZ,
      cryp->ring[i]->cmd_base,
      cryp->ring[i]->cmd_dma);
  kfree(cryp->ring[i]);
 }
}
