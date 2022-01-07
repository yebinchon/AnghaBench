
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
struct mtk_cqdma_vchan {TYPE_1__* pc; TYPE_2__ vc; } ;
struct dma_chan {int dummy; } ;
struct TYPE_3__ {int lock; } ;


 int mtk_cqdma_issue_vchan_pending (struct mtk_cqdma_vchan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mtk_cqdma_vchan* to_cqdma_vchan (struct dma_chan*) ;
 scalar_t__ vchan_issue_pending (TYPE_2__*) ;

__attribute__((used)) static void mtk_cqdma_issue_pending(struct dma_chan *c)
{
 struct mtk_cqdma_vchan *cvc = to_cqdma_vchan(c);
 unsigned long pc_flags;
 unsigned long vc_flags;


 spin_lock_irqsave(&cvc->pc->lock, pc_flags);
 spin_lock_irqsave(&cvc->vc.lock, vc_flags);

 if (vchan_issue_pending(&cvc->vc))
  mtk_cqdma_issue_vchan_pending(cvc);

 spin_unlock_irqrestore(&cvc->vc.lock, vc_flags);
 spin_unlock_irqrestore(&cvc->pc->lock, pc_flags);
}
