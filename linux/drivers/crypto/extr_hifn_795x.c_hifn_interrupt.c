
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hifn_dma {scalar_t__ cmdu; int resu; int dstu; int srcu; int resi; int dsti; int srci; int cmdi; } ;
struct hifn_device {int dmareg; int tasklet; TYPE_1__* pdev; scalar_t__ desc_virt; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int HIFN_0_PUISR ;
 int HIFN_1_DMA_CSR ;
 int HIFN_1_DMA_IER ;
 int HIFN_1_PUB_STATUS ;
 int HIFN_DMACSR_C_ABORT ;
 int HIFN_DMACSR_C_WAIT ;
 int HIFN_DMACSR_D_ABORT ;
 int HIFN_DMACSR_D_OVER ;
 int HIFN_DMACSR_ENGINE ;
 int HIFN_DMACSR_PUBDONE ;
 int HIFN_DMACSR_R_ABORT ;
 int HIFN_DMACSR_R_OVER ;
 int HIFN_DMACSR_S_ABORT ;
 int HIFN_DMAIER_C_WAIT ;
 int HIFN_PUBSTS_DONE ;
 int HIFN_PUISR_DSTOVER ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int dev_dbg (int *,char*,...) ;
 int dev_warn (int *,char*,int,int,int,int) ;
 int hifn_init_dma (struct hifn_device*) ;
 int hifn_init_registers (struct hifn_device*) ;
 int hifn_read_0 (struct hifn_device*,int ) ;
 int hifn_read_1 (struct hifn_device*,int ) ;
 int hifn_reset_dma (struct hifn_device*,int) ;
 int hifn_write_0 (struct hifn_device*,int ,int) ;
 int hifn_write_1 (struct hifn_device*,int ,int) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t hifn_interrupt(int irq, void *data)
{
 struct hifn_device *dev = (struct hifn_device *)data;
 struct hifn_dma *dma = (struct hifn_dma *)dev->desc_virt;
 u32 dmacsr, restart;

 dmacsr = hifn_read_1(dev, HIFN_1_DMA_CSR);

 dev_dbg(&dev->pdev->dev, "1 dmacsr: %08x, dmareg: %08x, res: %08x [%d], "
   "i: %d.%d.%d.%d, u: %d.%d.%d.%d.\n",
  dmacsr, dev->dmareg, dmacsr & dev->dmareg, dma->cmdi,
  dma->cmdi, dma->srci, dma->dsti, dma->resi,
  dma->cmdu, dma->srcu, dma->dstu, dma->resu);

 if ((dmacsr & dev->dmareg) == 0)
  return IRQ_NONE;

 hifn_write_1(dev, HIFN_1_DMA_CSR, dmacsr & dev->dmareg);

 if (dmacsr & HIFN_DMACSR_ENGINE)
  hifn_write_0(dev, HIFN_0_PUISR, hifn_read_0(dev, HIFN_0_PUISR));
 if (dmacsr & HIFN_DMACSR_PUBDONE)
  hifn_write_1(dev, HIFN_1_PUB_STATUS,
   hifn_read_1(dev, HIFN_1_PUB_STATUS) | HIFN_PUBSTS_DONE);

 restart = dmacsr & (HIFN_DMACSR_R_OVER | HIFN_DMACSR_D_OVER);
 if (restart) {
  u32 puisr = hifn_read_0(dev, HIFN_0_PUISR);

  dev_warn(&dev->pdev->dev, "overflow: r: %d, d: %d, puisr: %08x, d: %u.\n",
    !!(dmacsr & HIFN_DMACSR_R_OVER),
    !!(dmacsr & HIFN_DMACSR_D_OVER),
   puisr, !!(puisr & HIFN_PUISR_DSTOVER));
  if (!!(puisr & HIFN_PUISR_DSTOVER))
   hifn_write_0(dev, HIFN_0_PUISR, HIFN_PUISR_DSTOVER);
  hifn_write_1(dev, HIFN_1_DMA_CSR, dmacsr & (HIFN_DMACSR_R_OVER |
     HIFN_DMACSR_D_OVER));
 }

 restart = dmacsr & (HIFN_DMACSR_C_ABORT | HIFN_DMACSR_S_ABORT |
   HIFN_DMACSR_D_ABORT | HIFN_DMACSR_R_ABORT);
 if (restart) {
  dev_warn(&dev->pdev->dev, "abort: c: %d, s: %d, d: %d, r: %d.\n",
    !!(dmacsr & HIFN_DMACSR_C_ABORT),
    !!(dmacsr & HIFN_DMACSR_S_ABORT),
    !!(dmacsr & HIFN_DMACSR_D_ABORT),
    !!(dmacsr & HIFN_DMACSR_R_ABORT));
  hifn_reset_dma(dev, 1);
  hifn_init_dma(dev);
  hifn_init_registers(dev);
 }

 if ((dmacsr & HIFN_DMACSR_C_WAIT) && (dma->cmdu == 0)) {
  dev_dbg(&dev->pdev->dev, "wait on command.\n");
  dev->dmareg &= ~(HIFN_DMAIER_C_WAIT);
  hifn_write_1(dev, HIFN_1_DMA_IER, dev->dmareg);
 }

 tasklet_schedule(&dev->tasklet);

 return IRQ_HANDLED;
}
