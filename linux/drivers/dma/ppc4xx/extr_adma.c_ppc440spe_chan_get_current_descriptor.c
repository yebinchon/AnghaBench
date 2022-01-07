
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xor_regs {int ccbalr; } ;
struct ppc440spe_adma_chan {TYPE_1__* device; int hw_chain_inited; } ;
struct dma_regs {int acpl; } ;
struct TYPE_2__ {int id; struct xor_regs* xor_reg; struct dma_regs* dma_reg; } ;


 int DMA_CDB_MSK ;



 int ioread32 (int *) ;
 int ioread32be (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u32
ppc440spe_chan_get_current_descriptor(struct ppc440spe_adma_chan *chan)
{
 struct dma_regs *dma_reg;
 struct xor_regs *xor_reg;

 if (unlikely(!chan->hw_chain_inited))

  return 0;

 switch (chan->device->id) {
 case 130:
 case 129:
  dma_reg = chan->device->dma_reg;
  return ioread32(&dma_reg->acpl) & (~DMA_CDB_MSK);
 case 128:
  xor_reg = chan->device->xor_reg;
  return ioread32be(&xor_reg->ccbalr);
 }
 return 0;
}
