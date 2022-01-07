
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_qdma_queue {int queue_lock; } ;
struct TYPE_2__ {int lock; } ;
struct fsl_qdma_chan {TYPE_1__ vchan; struct fsl_qdma_queue* queue; } ;
struct dma_chan {int dummy; } ;


 int fsl_qdma_enqueue_desc (struct fsl_qdma_chan*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct fsl_qdma_chan* to_fsl_qdma_chan (struct dma_chan*) ;
 scalar_t__ vchan_issue_pending (TYPE_1__*) ;

__attribute__((used)) static void fsl_qdma_issue_pending(struct dma_chan *chan)
{
 unsigned long flags;
 struct fsl_qdma_chan *fsl_chan = to_fsl_qdma_chan(chan);
 struct fsl_qdma_queue *fsl_queue = fsl_chan->queue;

 spin_lock_irqsave(&fsl_queue->queue_lock, flags);
 spin_lock(&fsl_chan->vchan.lock);
 if (vchan_issue_pending(&fsl_chan->vchan))
  fsl_qdma_enqueue_desc(fsl_chan);
 spin_unlock(&fsl_chan->vchan.lock);
 spin_unlock_irqrestore(&fsl_queue->queue_lock, flags);
}
