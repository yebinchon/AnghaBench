
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int desc_completed; int lock; } ;
struct mtk_cqdma_vchan {int issue_synchronize; TYPE_2__ vc; int issue_completion; TYPE_1__* pc; } ;
struct dma_chan {int dummy; } ;
struct TYPE_3__ {int lock; } ;


 int WARN_ONCE (int,char*) ;
 int list_empty (int *) ;
 scalar_t__ mtk_cqdma_is_vchan_active (struct mtk_cqdma_vchan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mtk_cqdma_vchan* to_cqdma_vchan (struct dma_chan*) ;
 int vchan_synchronize (TYPE_2__*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void mtk_cqdma_free_active_desc(struct dma_chan *c)
{
 struct mtk_cqdma_vchan *cvc = to_cqdma_vchan(c);
 bool sync_needed = 0;
 unsigned long pc_flags;
 unsigned long vc_flags;


 spin_lock_irqsave(&cvc->pc->lock, pc_flags);
 spin_lock_irqsave(&cvc->vc.lock, vc_flags);


 if (mtk_cqdma_is_vchan_active(cvc)) {
  cvc->issue_synchronize = 1;
  sync_needed = 1;
 }

 spin_unlock_irqrestore(&cvc->vc.lock, vc_flags);
 spin_unlock_irqrestore(&cvc->pc->lock, pc_flags);


 if (sync_needed)
  wait_for_completion(&cvc->issue_completion);


 vchan_synchronize(&cvc->vc);

 WARN_ONCE(!list_empty(&cvc->vc.desc_completed),
    "Desc pending still in list desc_completed\n");
}
