
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t u32 ;
struct virt_dma_desc {int dummy; } ;
struct fsl_edma_desc {int dirn; int n_tcds; TYPE_5__* tcd; } ;
struct TYPE_7__ {size_t chan_id; } ;
struct TYPE_8__ {TYPE_1__ chan; } ;
struct fsl_edma_chan {struct fsl_edma_desc* edesc; TYPE_6__* edma; TYPE_2__ vchan; } ;
struct edma_regs {TYPE_3__* tcd; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef size_t dma_addr_t ;
struct TYPE_12__ {struct edma_regs regs; } ;
struct TYPE_11__ {TYPE_4__* vtcd; } ;
struct TYPE_10__ {int daddr; int saddr; int biter; int nbytes; } ;
struct TYPE_9__ {int daddr; int saddr; } ;


 int DMA_MEM_TO_DEV ;
 size_t edma_readl (TYPE_6__*,int *) ;
 size_t le16_to_cpu (int ) ;
 size_t le32_to_cpu (int ) ;

__attribute__((used)) static size_t fsl_edma_desc_residue(struct fsl_edma_chan *fsl_chan,
  struct virt_dma_desc *vdesc, bool in_progress)
{
 struct fsl_edma_desc *edesc = fsl_chan->edesc;
 struct edma_regs *regs = &fsl_chan->edma->regs;
 u32 ch = fsl_chan->vchan.chan.chan_id;
 enum dma_transfer_direction dir = edesc->dirn;
 dma_addr_t cur_addr, dma_addr;
 size_t len, size;
 int i;


 for (len = i = 0; i < fsl_chan->edesc->n_tcds; i++)
  len += le32_to_cpu(edesc->tcd[i].vtcd->nbytes)
   * le16_to_cpu(edesc->tcd[i].vtcd->biter);

 if (!in_progress)
  return len;

 if (dir == DMA_MEM_TO_DEV)
  cur_addr = edma_readl(fsl_chan->edma, &regs->tcd[ch].saddr);
 else
  cur_addr = edma_readl(fsl_chan->edma, &regs->tcd[ch].daddr);


 for (i = 0; i < fsl_chan->edesc->n_tcds; i++) {
  size = le32_to_cpu(edesc->tcd[i].vtcd->nbytes)
   * le16_to_cpu(edesc->tcd[i].vtcd->biter);
  if (dir == DMA_MEM_TO_DEV)
   dma_addr = le32_to_cpu(edesc->tcd[i].vtcd->saddr);
  else
   dma_addr = le32_to_cpu(edesc->tcd[i].vtcd->daddr);

  len -= size;
  if (cur_addr >= dma_addr && cur_addr < dma_addr + size) {
   len += dma_addr + size - cur_addr;
   break;
  }
 }

 return len;
}
