
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct edma_regs {int cerr; int errh; int errl; } ;
struct fsl_edma_engine {TYPE_1__* chans; struct edma_regs regs; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int idle; void* status; } ;


 unsigned int BIT (unsigned int) ;
 void* DMA_ERROR ;
 int EDMA_CERR_CERR (unsigned int) ;
 int EDMA_CHANNELS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int fsl_edma_disable_request (TYPE_1__*) ;
 unsigned int ioread32 (int ) ;
 int iowrite8 (int ,int ) ;

__attribute__((used)) static irqreturn_t mcf_edma_err_handler(int irq, void *dev_id)
{
 struct fsl_edma_engine *mcf_edma = dev_id;
 struct edma_regs *regs = &mcf_edma->regs;
 unsigned int err, ch;

 err = ioread32(regs->errl);
 if (!err)
  return IRQ_NONE;

 for (ch = 0; ch < (EDMA_CHANNELS / 2); ch++) {
  if (err & BIT(ch)) {
   fsl_edma_disable_request(&mcf_edma->chans[ch]);
   iowrite8(EDMA_CERR_CERR(ch), regs->cerr);
   mcf_edma->chans[ch].status = DMA_ERROR;
   mcf_edma->chans[ch].idle = 1;
  }
 }

 err = ioread32(regs->errh);
 if (!err)
  return IRQ_NONE;

 for (ch = (EDMA_CHANNELS / 2); ch < EDMA_CHANNELS; ch++) {
  if (err & (BIT(ch - (EDMA_CHANNELS / 2)))) {
   fsl_edma_disable_request(&mcf_edma->chans[ch]);
   iowrite8(EDMA_CERR_CERR(ch), regs->cerr);
   mcf_edma->chans[ch].status = DMA_ERROR;
   mcf_edma->chans[ch].idle = 1;
  }
 }

 return IRQ_HANDLED;
}
