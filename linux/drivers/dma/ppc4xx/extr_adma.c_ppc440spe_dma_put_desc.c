
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ppc440spe_adma_desc_slot {int hw_desc; int flags; int phys; } ;
struct ppc440spe_adma_chan {TYPE_1__* device; } ;
struct dma_regs {int cpfpl; } ;
struct TYPE_2__ {size_t id; struct dma_regs* dma_reg; } ;


 int ADMA_LL_DBG (int ) ;
 int DMA_CDB_NO_INT ;
 int PPC440SPE_DESC_INT ;
 struct ppc440spe_adma_desc_slot** chan_last_sub ;
 int iowrite32 (int ,int *) ;
 int print_cb (struct ppc440spe_adma_chan*,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ppc440spe_dma_put_desc(struct ppc440spe_adma_chan *chan,
  struct ppc440spe_adma_desc_slot *desc)
{
 u32 pcdb;
 struct dma_regs *dma_reg = chan->device->dma_reg;

 pcdb = desc->phys;
 if (!test_bit(PPC440SPE_DESC_INT, &desc->flags))
  pcdb |= DMA_CDB_NO_INT;

 chan_last_sub[chan->device->id] = desc;

 ADMA_LL_DBG(print_cb(chan, desc->hw_desc));

 iowrite32(pcdb, &dma_reg->cpfpl);
}
