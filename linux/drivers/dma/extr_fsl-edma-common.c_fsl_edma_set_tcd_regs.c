
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct fsl_edma_hw_tcd {int csr; int dlast_sga; int doff; int biter; int citer; int slast; int nbytes; int soff; int attr; int daddr; int saddr; } ;
struct edma_regs {TYPE_3__* tcd; } ;
struct fsl_edma_engine {struct edma_regs regs; } ;
struct TYPE_4__ {size_t chan_id; } ;
struct TYPE_5__ {TYPE_1__ chan; } ;
struct fsl_edma_chan {TYPE_2__ vchan; struct fsl_edma_engine* edma; } ;
struct TYPE_6__ {int csr; int dlast_sga; int doff; int biter; int citer; int slast; int nbytes; int soff; int attr; int daddr; int saddr; } ;


 int edma_writel (struct fsl_edma_engine*,int ,int *) ;
 int edma_writew (struct fsl_edma_engine*,int ,int *) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void fsl_edma_set_tcd_regs(struct fsl_edma_chan *fsl_chan,
      struct fsl_edma_hw_tcd *tcd)
{
 struct fsl_edma_engine *edma = fsl_chan->edma;
 struct edma_regs *regs = &fsl_chan->edma->regs;
 u32 ch = fsl_chan->vchan.chan.chan_id;






 edma_writew(edma, 0, &regs->tcd[ch].csr);
 edma_writel(edma, le32_to_cpu(tcd->saddr), &regs->tcd[ch].saddr);
 edma_writel(edma, le32_to_cpu(tcd->daddr), &regs->tcd[ch].daddr);

 edma_writew(edma, le16_to_cpu(tcd->attr), &regs->tcd[ch].attr);
 edma_writew(edma, le16_to_cpu(tcd->soff), &regs->tcd[ch].soff);

 edma_writel(edma, le32_to_cpu(tcd->nbytes), &regs->tcd[ch].nbytes);
 edma_writel(edma, le32_to_cpu(tcd->slast), &regs->tcd[ch].slast);

 edma_writew(edma, le16_to_cpu(tcd->citer), &regs->tcd[ch].citer);
 edma_writew(edma, le16_to_cpu(tcd->biter), &regs->tcd[ch].biter);
 edma_writew(edma, le16_to_cpu(tcd->doff), &regs->tcd[ch].doff);

 edma_writel(edma, le32_to_cpu(tcd->dlast_sga),
   &regs->tcd[ch].dlast_sga);

 edma_writew(edma, le16_to_cpu(tcd->csr), &regs->tcd[ch].csr);
}
