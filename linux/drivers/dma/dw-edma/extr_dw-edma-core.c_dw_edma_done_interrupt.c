
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virt_dma_desc {int node; } ;
struct dw_edma_desc {int chunks_alloc; } ;
struct TYPE_2__ {int lock; } ;
struct dw_edma_chan {int request; TYPE_1__ vc; void* status; } ;





 void* EDMA_ST_BUSY ;
 void* EDMA_ST_IDLE ;
 void* EDMA_ST_PAUSE ;
 int dw_edma_start_transfer (struct dw_edma_chan*) ;
 int dw_edma_v0_core_clear_done_int (struct dw_edma_chan*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vchan_cookie_complete (struct virt_dma_desc*) ;
 struct virt_dma_desc* vchan_next_desc (TYPE_1__*) ;
 struct dw_edma_desc* vd2dw_edma_desc (struct virt_dma_desc*) ;

__attribute__((used)) static void dw_edma_done_interrupt(struct dw_edma_chan *chan)
{
 struct dw_edma_desc *desc;
 struct virt_dma_desc *vd;
 unsigned long flags;

 dw_edma_v0_core_clear_done_int(chan);

 spin_lock_irqsave(&chan->vc.lock, flags);
 vd = vchan_next_desc(&chan->vc);
 if (vd) {
  switch (chan->request) {
  case 130:
   desc = vd2dw_edma_desc(vd);
   if (desc->chunks_alloc) {
    chan->status = EDMA_ST_BUSY;
    dw_edma_start_transfer(chan);
   } else {
    list_del(&vd->node);
    vchan_cookie_complete(vd);
    chan->status = EDMA_ST_IDLE;
   }
   break;

  case 128:
   list_del(&vd->node);
   vchan_cookie_complete(vd);
   chan->request = 130;
   chan->status = EDMA_ST_IDLE;
   break;

  case 129:
   chan->request = 130;
   chan->status = EDMA_ST_PAUSE;
   break;

  default:
   break;
  }
 }
 spin_unlock_irqrestore(&chan->vc.lock, flags);
}
