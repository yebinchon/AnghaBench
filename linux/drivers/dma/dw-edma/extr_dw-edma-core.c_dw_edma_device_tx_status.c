
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct virt_dma_desc {int dummy; } ;
struct dw_edma_desc {scalar_t__ xfer_sz; scalar_t__ alloc_sz; } ;
struct TYPE_2__ {int lock; } ;
struct dw_edma_chan {scalar_t__ status; TYPE_1__ vc; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef int dma_cookie_t ;


 int DMA_COMPLETE ;
 int DMA_IN_PROGRESS ;
 int DMA_PAUSED ;
 scalar_t__ EDMA_ST_PAUSE ;
 struct dw_edma_chan* dchan2dw_edma_chan (struct dma_chan*) ;
 int dma_cookie_status (struct dma_chan*,int ,struct dma_tx_state*) ;
 int dma_set_residue (struct dma_tx_state*,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct virt_dma_desc* vchan_find_desc (TYPE_1__*,int ) ;
 struct dw_edma_desc* vd2dw_edma_desc (struct virt_dma_desc*) ;

__attribute__((used)) static enum dma_status
dw_edma_device_tx_status(struct dma_chan *dchan, dma_cookie_t cookie,
    struct dma_tx_state *txstate)
{
 struct dw_edma_chan *chan = dchan2dw_edma_chan(dchan);
 struct dw_edma_desc *desc;
 struct virt_dma_desc *vd;
 unsigned long flags;
 enum dma_status ret;
 u32 residue = 0;

 ret = dma_cookie_status(dchan, cookie, txstate);
 if (ret == DMA_COMPLETE)
  return ret;

 if (ret == DMA_IN_PROGRESS && chan->status == EDMA_ST_PAUSE)
  ret = DMA_PAUSED;

 if (!txstate)
  goto ret_residue;

 spin_lock_irqsave(&chan->vc.lock, flags);
 vd = vchan_find_desc(&chan->vc, cookie);
 if (vd) {
  desc = vd2dw_edma_desc(vd);
  if (desc)
   residue = desc->alloc_sz - desc->xfer_sz;
 }
 spin_unlock_irqrestore(&chan->vc.lock, flags);

ret_residue:
 dma_set_residue(txstate, residue);

 return ret;
}
