
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virt_dma_desc {int node; } ;
struct TYPE_2__ {int lock; } ;
struct dw_edma_chan {int status; int request; TYPE_1__ vc; } ;


 int EDMA_REQ_NONE ;
 int EDMA_ST_IDLE ;
 int dw_edma_v0_core_clear_abort_int (struct dw_edma_chan*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vchan_cookie_complete (struct virt_dma_desc*) ;
 struct virt_dma_desc* vchan_next_desc (TYPE_1__*) ;

__attribute__((used)) static void dw_edma_abort_interrupt(struct dw_edma_chan *chan)
{
 struct virt_dma_desc *vd;
 unsigned long flags;

 dw_edma_v0_core_clear_abort_int(chan);

 spin_lock_irqsave(&chan->vc.lock, flags);
 vd = vchan_next_desc(&chan->vc);
 if (vd) {
  list_del(&vd->node);
  vchan_cookie_complete(vd);
 }
 spin_unlock_irqrestore(&chan->vc.lock, flags);
 chan->request = EDMA_REQ_NONE;
 chan->status = EDMA_ST_IDLE;
}
