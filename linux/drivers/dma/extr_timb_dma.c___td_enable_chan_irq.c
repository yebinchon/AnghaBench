
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int chan_id; } ;
struct timb_dma_chan {TYPE_1__ chan; } ;
struct timb_dma {scalar_t__ membase; } ;


 scalar_t__ TIMBDMA_IER ;
 int chan2dev (TYPE_1__*) ;
 int dev_dbg (int ,char*,int,int) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 struct timb_dma* tdchantotd (struct timb_dma_chan*) ;

__attribute__((used)) static void __td_enable_chan_irq(struct timb_dma_chan *td_chan)
{
 int id = td_chan->chan.chan_id;
 struct timb_dma *td = tdchantotd(td_chan);
 u32 ier;


 ier = ioread32(td->membase + TIMBDMA_IER);
 ier |= 1 << id;
 dev_dbg(chan2dev(&td_chan->chan), "Enabling irq: %d, IER: 0x%x\n", id,
  ier);
 iowrite32(ier, td->membase + TIMBDMA_IER);
}
