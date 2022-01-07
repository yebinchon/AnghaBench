
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct txx9dmac_dev {int irq; struct txx9dmac_chan** chan; } ;
struct TYPE_2__ {int dev; } ;
struct txx9dmac_chan {int lock; int chan; TYPE_1__ dma; } ;


 int CSR ;
 int MCR ;
 int TXX9_DMA_CSR_ABCHC ;
 int TXX9_DMA_CSR_NCHNC ;
 int TXX9_DMA_CSR_NTRNFC ;
 int TXX9_DMA_MAX_NR_CHANNELS ;
 int chan2dev (int *) ;
 int channel_readl (struct txx9dmac_chan*,int ) ;
 int dev_vdbg (int ,char*,int) ;
 int dma_readl (struct txx9dmac_dev*,int ) ;
 int enable_irq (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int txx9dmac_scan_descriptors (struct txx9dmac_chan*) ;

__attribute__((used)) static void txx9dmac_tasklet(unsigned long data)
{
 int irq;
 u32 csr;
 struct txx9dmac_chan *dc;

 struct txx9dmac_dev *ddev = (struct txx9dmac_dev *)data;
 u32 mcr;
 int i;

 mcr = dma_readl(ddev, MCR);
 dev_vdbg(ddev->chan[0]->dma.dev, "tasklet: mcr=%x\n", mcr);
 for (i = 0; i < TXX9_DMA_MAX_NR_CHANNELS; i++) {
  if ((mcr >> (24 + i)) & 0x11) {
   dc = ddev->chan[i];
   csr = channel_readl(dc, CSR);
   dev_vdbg(chan2dev(&dc->chan), "tasklet: status=%x\n",
     csr);
   spin_lock(&dc->lock);
   if (csr & (TXX9_DMA_CSR_ABCHC | TXX9_DMA_CSR_NCHNC |
       TXX9_DMA_CSR_NTRNFC))
    txx9dmac_scan_descriptors(dc);
   spin_unlock(&dc->lock);
  }
 }
 irq = ddev->irq;

 enable_irq(irq);
}
