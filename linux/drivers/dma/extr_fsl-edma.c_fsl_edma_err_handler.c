
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct edma_regs {int cerr; int errl; } ;
struct fsl_edma_engine {unsigned int n_chans; TYPE_1__* chans; struct edma_regs regs; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int idle; int status; } ;


 int DMA_ERROR ;
 int EDMA_CERR_CERR (unsigned int) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int edma_readl (struct fsl_edma_engine*,int ) ;
 int edma_writeb (struct fsl_edma_engine*,int ,int ) ;
 int fsl_edma_disable_request (TYPE_1__*) ;

__attribute__((used)) static irqreturn_t fsl_edma_err_handler(int irq, void *dev_id)
{
 struct fsl_edma_engine *fsl_edma = dev_id;
 unsigned int err, ch;
 struct edma_regs *regs = &fsl_edma->regs;

 err = edma_readl(fsl_edma, regs->errl);
 if (!err)
  return IRQ_NONE;

 for (ch = 0; ch < fsl_edma->n_chans; ch++) {
  if (err & (0x1 << ch)) {
   fsl_edma_disable_request(&fsl_edma->chans[ch]);
   edma_writeb(fsl_edma, EDMA_CERR_CERR(ch), regs->cerr);
   fsl_edma->chans[ch].status = DMA_ERROR;
   fsl_edma->chans[ch].idle = 1;
  }
 }
 return IRQ_HANDLED;
}
