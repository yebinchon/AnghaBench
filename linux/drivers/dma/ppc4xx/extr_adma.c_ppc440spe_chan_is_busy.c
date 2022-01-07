
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xor_regs {int sr; } ;
struct ppc440spe_adma_chan {TYPE_1__* device; } ;
struct dma_regs {int csftp; int cpftp; int cpfhp; } ;
struct TYPE_2__ {int id; struct xor_regs* xor_reg; struct dma_regs* dma_reg; } ;





 int XOR_SR_XCP_BIT ;
 int ioread16 (int *) ;
 int ioread32be (int *) ;

__attribute__((used)) static int ppc440spe_chan_is_busy(struct ppc440spe_adma_chan *chan)
{
 struct dma_regs *dma_reg;
 struct xor_regs *xor_reg;
 int busy = 0;

 switch (chan->device->id) {
 case 130:
 case 129:
  dma_reg = chan->device->dma_reg;



  if (ioread16(&dma_reg->cpfhp) != ioread16(&dma_reg->cpftp) ||
      ioread16(&dma_reg->cpftp) != ioread16(&dma_reg->csftp))
   busy = 1;
  break;
 case 128:


  xor_reg = chan->device->xor_reg;
  busy = (ioread32be(&xor_reg->sr) & XOR_SR_XCP_BIT) ? 1 : 0;
  break;
 }

 return busy;
}
