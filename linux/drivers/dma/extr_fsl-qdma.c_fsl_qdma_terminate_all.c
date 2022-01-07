
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct fsl_qdma_chan {TYPE_1__ vchan; } ;
struct dma_chan {int dummy; } ;


 int LIST_HEAD (int ) ;
 int head ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct fsl_qdma_chan* to_fsl_qdma_chan (struct dma_chan*) ;
 int vchan_dma_desc_free_list (TYPE_1__*,int *) ;
 int vchan_get_all_descriptors (TYPE_1__*,int *) ;

__attribute__((used)) static int fsl_qdma_terminate_all(struct dma_chan *chan)
{
 LIST_HEAD(head);
 unsigned long flags;
 struct fsl_qdma_chan *fsl_chan = to_fsl_qdma_chan(chan);

 spin_lock_irqsave(&fsl_chan->vchan.lock, flags);
 vchan_get_all_descriptors(&fsl_chan->vchan, &head);
 spin_unlock_irqrestore(&fsl_chan->vchan.lock, flags);
 vchan_dma_desc_free_list(&fsl_chan->vchan, &head);
 return 0;
}
