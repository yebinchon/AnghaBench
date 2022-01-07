
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int chan_id; } ;
struct timb_dma_chan {TYPE_1__ chan; } ;
struct timb_dma {scalar_t__ membase; } ;


 scalar_t__ TIMBDMA_ISR ;
 int chan2dev (TYPE_1__*) ;
 int dev_dbg (int ,char*,int,struct timb_dma*) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;

__attribute__((used)) static bool __td_dma_done_ack(struct timb_dma_chan *td_chan)
{
 int id = td_chan->chan.chan_id;
 struct timb_dma *td = (struct timb_dma *)((u8 *)td_chan -
  id * sizeof(struct timb_dma_chan) - sizeof(struct timb_dma));
 u32 isr;
 bool done = 0;

 dev_dbg(chan2dev(&td_chan->chan), "Checking irq: %d, td: %p\n", id, td);

 isr = ioread32(td->membase + TIMBDMA_ISR) & (1 << id);
 if (isr) {
  iowrite32(isr, td->membase + TIMBDMA_ISR);
  done = 1;
 }

 return done;
}
