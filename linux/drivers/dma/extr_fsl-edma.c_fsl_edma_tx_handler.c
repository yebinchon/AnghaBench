
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct edma_regs {int cint; int intl; } ;
struct fsl_edma_engine {unsigned int n_chans; struct fsl_edma_chan* chans; struct edma_regs regs; } ;
struct TYPE_6__ {int lock; } ;
struct fsl_edma_chan {int idle; TYPE_2__ vchan; TYPE_1__* edesc; int status; } ;
typedef int irqreturn_t ;
struct TYPE_7__ {int node; } ;
struct TYPE_5__ {TYPE_3__ vdesc; int iscyclic; } ;


 int DMA_COMPLETE ;
 int EDMA_CINT_CINT (unsigned int) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int edma_readl (struct fsl_edma_engine*,int ) ;
 int edma_writeb (struct fsl_edma_engine*,int ,int ) ;
 int fsl_edma_xfer_desc (struct fsl_edma_chan*) ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vchan_cookie_complete (TYPE_3__*) ;
 int vchan_cyclic_callback (TYPE_3__*) ;

__attribute__((used)) static irqreturn_t fsl_edma_tx_handler(int irq, void *dev_id)
{
 struct fsl_edma_engine *fsl_edma = dev_id;
 unsigned int intr, ch;
 struct edma_regs *regs = &fsl_edma->regs;
 struct fsl_edma_chan *fsl_chan;

 intr = edma_readl(fsl_edma, regs->intl);
 if (!intr)
  return IRQ_NONE;

 for (ch = 0; ch < fsl_edma->n_chans; ch++) {
  if (intr & (0x1 << ch)) {
   edma_writeb(fsl_edma, EDMA_CINT_CINT(ch), regs->cint);

   fsl_chan = &fsl_edma->chans[ch];

   spin_lock(&fsl_chan->vchan.lock);
   if (!fsl_chan->edesc->iscyclic) {
    list_del(&fsl_chan->edesc->vdesc.node);
    vchan_cookie_complete(&fsl_chan->edesc->vdesc);
    fsl_chan->edesc = ((void*)0);
    fsl_chan->status = DMA_COMPLETE;
    fsl_chan->idle = 1;
   } else {
    vchan_cyclic_callback(&fsl_chan->edesc->vdesc);
   }

   if (!fsl_chan->edesc)
    fsl_edma_xfer_desc(fsl_chan);

   spin_unlock(&fsl_chan->vchan.lock);
  }
 }
 return IRQ_HANDLED;
}
