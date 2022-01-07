
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int chan_id; } ;
struct TYPE_6__ {TYPE_1__ chan; } ;
struct fsl_edma_chan {TYPE_4__* edma; TYPE_2__ vchan; } ;
struct edma_regs {int ceei; int cerq; } ;
struct TYPE_8__ {TYPE_3__* drvdata; struct edma_regs regs; } ;
struct TYPE_7__ {scalar_t__ version; } ;


 int EDMA_CEEI_CEEI (int ) ;
 int edma_writeb (TYPE_4__*,int ,int ) ;
 int iowrite8 (int ,int ) ;
 scalar_t__ v1 ;

void fsl_edma_disable_request(struct fsl_edma_chan *fsl_chan)
{
 struct edma_regs *regs = &fsl_chan->edma->regs;
 u32 ch = fsl_chan->vchan.chan.chan_id;

 if (fsl_chan->edma->drvdata->version == v1) {
  edma_writeb(fsl_chan->edma, ch, regs->cerq);
  edma_writeb(fsl_chan->edma, EDMA_CEEI_CEEI(ch), regs->ceei);
 } else {



  iowrite8(ch, regs->cerq);
  iowrite8(EDMA_CEEI_CEEI(ch), regs->ceei);
 }
}
