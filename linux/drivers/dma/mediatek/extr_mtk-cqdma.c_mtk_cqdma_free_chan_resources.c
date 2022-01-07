
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mtk_cqdma_vchan {TYPE_1__* pc; } ;
struct dma_chan {int dummy; } ;
struct TYPE_4__ {int lock; int refcnt; } ;


 int MTK_CQDMA_FLUSH ;
 int MTK_CQDMA_FLUSH_BIT ;
 int MTK_CQDMA_INT_EN ;
 int MTK_CQDMA_INT_EN_BIT ;
 int MTK_CQDMA_INT_FLAG ;
 int MTK_CQDMA_INT_FLAG_BIT ;
 int cqdma2dev (int ) ;
 int dev_err (int ,char*) ;
 scalar_t__ mtk_cqdma_poll_engine_done (TYPE_1__*,int) ;
 int mtk_cqdma_terminate_all (struct dma_chan*) ;
 int mtk_dma_clr (TYPE_1__*,int ,int ) ;
 int mtk_dma_set (TYPE_1__*,int ,int ) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int to_cqdma_dev (struct dma_chan*) ;
 struct mtk_cqdma_vchan* to_cqdma_vchan (struct dma_chan*) ;

__attribute__((used)) static void mtk_cqdma_free_chan_resources(struct dma_chan *c)
{
 struct mtk_cqdma_vchan *cvc = to_cqdma_vchan(c);
 unsigned long flags;


 mtk_cqdma_terminate_all(c);

 spin_lock_irqsave(&cvc->pc->lock, flags);


 if (refcount_dec_and_test(&cvc->pc->refcnt)) {

  mtk_dma_set(cvc->pc, MTK_CQDMA_FLUSH, MTK_CQDMA_FLUSH_BIT);


  if (mtk_cqdma_poll_engine_done(cvc->pc, 1) < 0)
   dev_err(cqdma2dev(to_cqdma_dev(c)), "cqdma flush timeout\n");


  mtk_dma_clr(cvc->pc, MTK_CQDMA_FLUSH, MTK_CQDMA_FLUSH_BIT);
  mtk_dma_clr(cvc->pc, MTK_CQDMA_INT_FLAG,
       MTK_CQDMA_INT_FLAG_BIT);


  mtk_dma_clr(cvc->pc, MTK_CQDMA_INT_EN, MTK_CQDMA_INT_EN_BIT);
 }

 spin_unlock_irqrestore(&cvc->pc->lock, flags);
}
