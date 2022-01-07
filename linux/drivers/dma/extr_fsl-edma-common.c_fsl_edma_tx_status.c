
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct virt_dma_desc {int dummy; } ;
struct TYPE_8__ {int lock; } ;
struct fsl_edma_chan {int status; TYPE_4__ vchan; TYPE_3__* edesc; } ;
struct dma_tx_state {void* residue; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef scalar_t__ dma_cookie_t ;
struct TYPE_5__ {scalar_t__ cookie; } ;
struct TYPE_6__ {TYPE_1__ tx; } ;
struct TYPE_7__ {TYPE_2__ vdesc; } ;


 int DMA_COMPLETE ;
 int dma_cookie_status (struct dma_chan*,scalar_t__,struct dma_tx_state*) ;
 void* fsl_edma_desc_residue (struct fsl_edma_chan*,struct virt_dma_desc*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct fsl_edma_chan* to_fsl_edma_chan (struct dma_chan*) ;
 struct virt_dma_desc* vchan_find_desc (TYPE_4__*,scalar_t__) ;

enum dma_status fsl_edma_tx_status(struct dma_chan *chan,
  dma_cookie_t cookie, struct dma_tx_state *txstate)
{
 struct fsl_edma_chan *fsl_chan = to_fsl_edma_chan(chan);
 struct virt_dma_desc *vdesc;
 enum dma_status status;
 unsigned long flags;

 status = dma_cookie_status(chan, cookie, txstate);
 if (status == DMA_COMPLETE)
  return status;

 if (!txstate)
  return fsl_chan->status;

 spin_lock_irqsave(&fsl_chan->vchan.lock, flags);
 vdesc = vchan_find_desc(&fsl_chan->vchan, cookie);
 if (fsl_chan->edesc && cookie == fsl_chan->edesc->vdesc.tx.cookie)
  txstate->residue =
   fsl_edma_desc_residue(fsl_chan, vdesc, 1);
 else if (vdesc)
  txstate->residue =
   fsl_edma_desc_residue(fsl_chan, vdesc, 0);
 else
  txstate->residue = 0;

 spin_unlock_irqrestore(&fsl_chan->vchan.lock, flags);

 return fsl_chan->status;
}
