
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct fsl_edma_chan {int * tcd_pool; TYPE_1__ vchan; int * edesc; } ;
struct dma_chan {int dummy; } ;


 int LIST_HEAD (int ) ;
 int dma_pool_destroy (int *) ;
 int fsl_edma_chan_mux (struct fsl_edma_chan*,int ,int) ;
 int fsl_edma_disable_request (struct fsl_edma_chan*) ;
 int fsl_edma_unprep_slave_dma (struct fsl_edma_chan*) ;
 int head ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct fsl_edma_chan* to_fsl_edma_chan (struct dma_chan*) ;
 int vchan_dma_desc_free_list (TYPE_1__*,int *) ;
 int vchan_get_all_descriptors (TYPE_1__*,int *) ;

void fsl_edma_free_chan_resources(struct dma_chan *chan)
{
 struct fsl_edma_chan *fsl_chan = to_fsl_edma_chan(chan);
 unsigned long flags;
 LIST_HEAD(head);

 spin_lock_irqsave(&fsl_chan->vchan.lock, flags);
 fsl_edma_disable_request(fsl_chan);
 fsl_edma_chan_mux(fsl_chan, 0, 0);
 fsl_chan->edesc = ((void*)0);
 vchan_get_all_descriptors(&fsl_chan->vchan, &head);
 fsl_edma_unprep_slave_dma(fsl_chan);
 spin_unlock_irqrestore(&fsl_chan->vchan.lock, flags);

 vchan_dma_desc_free_list(&fsl_chan->vchan, &head);
 dma_pool_destroy(fsl_chan->tcd_pool);
 fsl_chan->tcd_pool = ((void*)0);
}
