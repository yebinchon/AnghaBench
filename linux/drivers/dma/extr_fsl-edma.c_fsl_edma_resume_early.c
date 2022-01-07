
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct edma_regs {int cr; TYPE_1__* tcd; } ;
struct fsl_edma_engine {int n_chans; struct fsl_edma_chan* chans; struct edma_regs regs; } ;
struct fsl_edma_chan {scalar_t__ slave_id; int pm_state; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int csr; } ;


 int EDMA_CR_ERCA ;
 int EDMA_CR_ERGA ;
 int RUNNING ;
 struct fsl_edma_engine* dev_get_drvdata (struct device*) ;
 int edma_writel (struct fsl_edma_engine*,int,int ) ;
 int edma_writew (struct fsl_edma_engine*,int,int *) ;
 int fsl_edma_chan_mux (struct fsl_edma_chan*,scalar_t__,int) ;

__attribute__((used)) static int fsl_edma_resume_early(struct device *dev)
{
 struct fsl_edma_engine *fsl_edma = dev_get_drvdata(dev);
 struct fsl_edma_chan *fsl_chan;
 struct edma_regs *regs = &fsl_edma->regs;
 int i;

 for (i = 0; i < fsl_edma->n_chans; i++) {
  fsl_chan = &fsl_edma->chans[i];
  fsl_chan->pm_state = RUNNING;
  edma_writew(fsl_edma, 0x0, &regs->tcd[i].csr);
  if (fsl_chan->slave_id != 0)
   fsl_edma_chan_mux(fsl_chan, fsl_chan->slave_id, 1);
 }

 edma_writel(fsl_edma, EDMA_CR_ERGA | EDMA_CR_ERCA, regs->cr);

 return 0;
}
