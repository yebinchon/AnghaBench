
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct mtk_cqdma_vchan {struct mtk_cqdma_pchan* pc; } ;
struct mtk_cqdma_pchan {int lock; int refcnt; } ;
struct mtk_cqdma_device {size_t dma_channels; struct mtk_cqdma_pchan** pc; } ;
struct dma_chan {int dummy; } ;


 int ENOSPC ;
 int MTK_CQDMA_INT_EN ;
 int MTK_CQDMA_INT_EN_BIT ;
 size_t U32_MAX ;
 int mtk_cqdma_hard_reset (struct mtk_cqdma_pchan*) ;
 int mtk_dma_set (struct mtk_cqdma_pchan*,int ,int ) ;
 int refcount_inc (int *) ;
 size_t refcount_read (int *) ;
 int refcount_set (int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mtk_cqdma_device* to_cqdma_dev (struct dma_chan*) ;
 struct mtk_cqdma_vchan* to_cqdma_vchan (struct dma_chan*) ;

__attribute__((used)) static int mtk_cqdma_alloc_chan_resources(struct dma_chan *c)
{
 struct mtk_cqdma_device *cqdma = to_cqdma_dev(c);
 struct mtk_cqdma_vchan *vc = to_cqdma_vchan(c);
 struct mtk_cqdma_pchan *pc = ((void*)0);
 u32 i, min_refcnt = U32_MAX, refcnt;
 unsigned long flags;


 for (i = 0; i < cqdma->dma_channels; ++i) {
  refcnt = refcount_read(&cqdma->pc[i]->refcnt);
  if (refcnt < min_refcnt) {
   pc = cqdma->pc[i];
   min_refcnt = refcnt;
  }
 }

 if (!pc)
  return -ENOSPC;

 spin_lock_irqsave(&pc->lock, flags);

 if (!refcount_read(&pc->refcnt)) {

  mtk_cqdma_hard_reset(pc);


  mtk_dma_set(pc, MTK_CQDMA_INT_EN, MTK_CQDMA_INT_EN_BIT);





  refcount_set(&pc->refcnt, 1);
 } else {
  refcount_inc(&pc->refcnt);
 }

 spin_unlock_irqrestore(&pc->lock, flags);

 vc->pc = pc;

 return 0;
}
