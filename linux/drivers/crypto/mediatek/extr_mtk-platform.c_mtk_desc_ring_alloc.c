
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_ring {int cmd_dma; void* cmd_base; int res_dma; void* res_base; void* res_next; void* cmd_next; } ;
struct mtk_cryp {int dev; struct mtk_ring** ring; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MTK_DESC_RING_SZ ;
 int MTK_RING_MAX ;
 void* dma_alloc_coherent (int ,int ,int *,int ) ;
 int dma_free_coherent (int ,int ,void*,int ) ;
 int kfree (struct mtk_ring*) ;
 struct mtk_ring* kzalloc (int,int ) ;

__attribute__((used)) static int mtk_desc_ring_alloc(struct mtk_cryp *cryp)
{
 struct mtk_ring **ring = cryp->ring;
 int i, err = ENOMEM;

 for (i = 0; i < MTK_RING_MAX; i++) {
  ring[i] = kzalloc(sizeof(**ring), GFP_KERNEL);
  if (!ring[i])
   goto err_cleanup;

  ring[i]->cmd_base = dma_alloc_coherent(cryp->dev,
             MTK_DESC_RING_SZ,
             &ring[i]->cmd_dma,
             GFP_KERNEL);
  if (!ring[i]->cmd_base)
   goto err_cleanup;

  ring[i]->res_base = dma_alloc_coherent(cryp->dev,
             MTK_DESC_RING_SZ,
             &ring[i]->res_dma,
             GFP_KERNEL);
  if (!ring[i]->res_base)
   goto err_cleanup;

  ring[i]->cmd_next = ring[i]->cmd_base;
  ring[i]->res_next = ring[i]->res_base;
 }
 return 0;

err_cleanup:
 for (; i--; ) {
  dma_free_coherent(cryp->dev, MTK_DESC_RING_SZ,
      ring[i]->res_base, ring[i]->res_dma);
  dma_free_coherent(cryp->dev, MTK_DESC_RING_SZ,
      ring[i]->cmd_base, ring[i]->cmd_dma);
  kfree(ring[i]);
 }
 return err;
}
