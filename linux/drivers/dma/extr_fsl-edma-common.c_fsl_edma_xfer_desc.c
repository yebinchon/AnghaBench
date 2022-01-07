
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virt_dma_desc {int dummy; } ;
struct fsl_edma_chan {int idle; int status; TYPE_2__* edesc; int vchan; } ;
struct TYPE_4__ {TYPE_1__* tcd; } ;
struct TYPE_3__ {int vtcd; } ;


 int DMA_IN_PROGRESS ;
 int fsl_edma_enable_request (struct fsl_edma_chan*) ;
 int fsl_edma_set_tcd_regs (struct fsl_edma_chan*,int ) ;
 TYPE_2__* to_fsl_edma_desc (struct virt_dma_desc*) ;
 struct virt_dma_desc* vchan_next_desc (int *) ;

void fsl_edma_xfer_desc(struct fsl_edma_chan *fsl_chan)
{
 struct virt_dma_desc *vdesc;

 vdesc = vchan_next_desc(&fsl_chan->vchan);
 if (!vdesc)
  return;
 fsl_chan->edesc = to_fsl_edma_desc(vdesc);
 fsl_edma_set_tcd_regs(fsl_chan, fsl_chan->edesc->tcd[0].vtcd);
 fsl_edma_enable_request(fsl_chan);
 fsl_chan->status = DMA_IN_PROGRESS;
 fsl_chan->idle = 0;
}
