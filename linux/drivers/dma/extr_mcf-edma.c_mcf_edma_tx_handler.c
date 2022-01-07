
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct edma_regs {int cint; int intl; int inth; } ;
struct fsl_edma_engine {unsigned int n_chans; struct fsl_edma_chan* chans; struct edma_regs regs; } ;
struct TYPE_6__ {int lock; } ;
struct fsl_edma_chan {int idle; TYPE_2__ vchan; TYPE_1__* edesc; int status; } ;
typedef int irqreturn_t ;
struct TYPE_7__ {int node; } ;
struct TYPE_5__ {TYPE_3__ vdesc; int iscyclic; } ;


 int BIT (unsigned int) ;
 int DMA_COMPLETE ;
 int EDMA_MASK_CH (unsigned int) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int fsl_edma_xfer_desc (struct fsl_edma_chan*) ;
 int ioread32 (int ) ;
 int iowrite8 (int ,int ) ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vchan_cookie_complete (TYPE_3__*) ;
 int vchan_cyclic_callback (TYPE_3__*) ;

__attribute__((used)) static irqreturn_t mcf_edma_tx_handler(int irq, void *dev_id)
{
 struct fsl_edma_engine *mcf_edma = dev_id;
 struct edma_regs *regs = &mcf_edma->regs;
 unsigned int ch;
 struct fsl_edma_chan *mcf_chan;
 u64 intmap;

 intmap = ioread32(regs->inth);
 intmap <<= 32;
 intmap |= ioread32(regs->intl);
 if (!intmap)
  return IRQ_NONE;

 for (ch = 0; ch < mcf_edma->n_chans; ch++) {
  if (intmap & BIT(ch)) {
   iowrite8(EDMA_MASK_CH(ch), regs->cint);

   mcf_chan = &mcf_edma->chans[ch];

   spin_lock(&mcf_chan->vchan.lock);
   if (!mcf_chan->edesc->iscyclic) {
    list_del(&mcf_chan->edesc->vdesc.node);
    vchan_cookie_complete(&mcf_chan->edesc->vdesc);
    mcf_chan->edesc = ((void*)0);
    mcf_chan->status = DMA_COMPLETE;
    mcf_chan->idle = 1;
   } else {
    vchan_cyclic_callback(&mcf_chan->edesc->vdesc);
   }

   if (!mcf_chan->edesc)
    fsl_edma_xfer_desc(mcf_chan);

   spin_unlock(&mcf_chan->vchan.lock);
  }
 }

 return IRQ_HANDLED;
}
