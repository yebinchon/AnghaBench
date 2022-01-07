
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_async_tx_descriptor {unsigned long flags; int desc_free; int tx_submit; } ;
struct TYPE_2__ {scalar_t__ residue; int result; } ;
struct virt_dma_desc {struct dma_async_tx_descriptor tx; int node; TYPE_1__ tx_result; } ;
struct virt_dma_chan {int lock; int desc_allocated; int chan; } ;


 int DMA_TRANS_NOERROR ;
 int dma_async_tx_descriptor_init (struct dma_async_tx_descriptor*,int *) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vchan_tx_desc_free ;
 int vchan_tx_submit ;

__attribute__((used)) static inline struct dma_async_tx_descriptor *vchan_tx_prep(struct virt_dma_chan *vc,
 struct virt_dma_desc *vd, unsigned long tx_flags)
{
 unsigned long flags;

 dma_async_tx_descriptor_init(&vd->tx, &vc->chan);
 vd->tx.flags = tx_flags;
 vd->tx.tx_submit = vchan_tx_submit;
 vd->tx.desc_free = vchan_tx_desc_free;

 vd->tx_result.result = DMA_TRANS_NOERROR;
 vd->tx_result.residue = 0;

 spin_lock_irqsave(&vc->lock, flags);
 list_add_tail(&vd->node, &vc->desc_allocated);
 spin_unlock_irqrestore(&vc->lock, flags);

 return &vd->tx;
}
